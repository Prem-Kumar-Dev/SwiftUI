//
//  ContentView.swift
//  StudentPerformancePredictorMain
//
//  Created by Prem Kumar on 11/02/26.
//

import SwiftUI
import CoreML

struct ContentView: View {

    @State private var hoursStudied: Double = 6
    @State private var previousScore: Double = 75
    @State private var sleepHours: Double = 7
    @State private var papersPracticed: Double = 20
    @State private var extracurricular: Bool = false

    @State private var isLoading = false
    @State private var predictionResult: Double?
    @State private var errorMessage: String?
    @State private var showResult = false

    var body: some View {
        NavigationStack {
            Form {
                Section("Study Habits") {
                    sliderRow("Hours Studied", value: $hoursStudied, range: 1...12, unit: "h", tint: .blue)
                    sliderRow("Previous Score", value: $previousScore, range: 1...100, tint: .green)
                }

                Section("Health & Practice") {
                    sliderRow("Sleep Hours", value: $sleepHours, range: 1...12, unit: "h", tint: .purple)
                    sliderRow("Papers Practiced", value: $papersPracticed, range: 1...100, tint: .orange)
                }

                Section("Activities") {
                    Toggle("Extracurricular Activities", isOn: $extracurricular)
                        .tint(.indigo)
                }

                Section {
                    Button(action: predict) {
                        HStack {
                            if isLoading { ProgressView().padding(.trailing, 5) }
                            Text("Predict Performance")
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity)
                        }
                    }
                    .disabled(isLoading)
                    .listRowBackground(Color.blue)
                    .foregroundStyle(.white)
                }



                if let error = errorMessage {
                    Section("Error") {
                        Text(error).foregroundStyle(.red)
                    }
                }
            }
            .navigationTitle("Student Predictor")
            .sheet(isPresented: $showResult) {
                ResultGaugeView(score: predictionResult ?? 0)
            }
        }
    }
}

// MARK: - Reusable Slider Row

private extension ContentView {
    func sliderRow(
        _ title: String,
        value: Binding<Double>,
        range: ClosedRange<Double>,
        unit: String = "",
        tint: Color
    ) -> some View {
        VStack(alignment: .leading) {
            HStack {
                Text(title)
                Spacer()
                Text("\(Int(value.wrappedValue))\(unit.isEmpty ? "" : " \(unit)")")
                    .foregroundStyle(.secondary)
                    .fontWeight(.semibold)
            }
            Slider(value: value, in: range, step: 1)
                .tint(tint)
        }
    }
}

// MARK: - Prediction

private extension ContentView {
    func predict() {
        errorMessage = nil
        predictionResult = nil
        isLoading = true

        Task {
            defer { isLoading = false }
            do {
                predictionResult = try evaluate()
                showResult = true
            } catch {
                errorMessage = error.localizedDescription
            }
        }
    }

    func evaluate() throws -> Double {
        let hoursStudied = Int64(self.hoursStudied)
        let previousScores = Int64(self.previousScore)
        let sleepHours = Int64(self.sleepHours)
        let papersPracticed = Int64(self.papersPracticed)
        let extracurricularActivity = self.extracurricular ? "Yes" : "No"

        let config = MLModelConfiguration()
        let model = try StudentPerformancePredictor_1(configuration: config)

        let prediction = try model.prediction(
            Hours_Studied: hoursStudied,
            Previous_Scores: previousScores,
            Extracurricular_Activities: extracurricularActivity,
            Sleep_Hours: sleepHours,
            Sample_Question_Papers_Practiced: papersPracticed
        )

        return prediction.Performance_Index
    }
}

// MARK: - Result Gauge Sheet

struct ResultGaugeView: View {
    let score: Double
    @Environment(\.dismiss) private var dismiss

    private var performanceLabel: String {
        switch score {
        case 80...100: "Excellent"
        case 60..<80:  "Good"
        case 40..<60:  "Average"
        default:       "Needs Improvement"
        }
    }

    private var accentColor: Color {
        switch score {
        case 80...100: .green
        case 60..<80:  .yellow
        case 40..<60:  .orange
        default:       .red
        }
    }

    var body: some View {
        VStack(spacing: 32) {
            Spacer()

            Text("Performance Index")
                .font(.title2.bold())

            Gauge(value: score, in: 0...100) {
                Text("Score")
            } currentValueLabel: {
                Text(String(format: "%.1f", score))
                    .font(.system(.largeTitle, design: .rounded, weight: .heavy))
            } minimumValueLabel: {
                Text("0").font(.caption).foregroundStyle(.secondary)
            } maximumValueLabel: {
                Text("100").font(.caption).foregroundStyle(.secondary)
            }
            .gaugeStyle(.accessoryCircular)
            .scaleEffect(3)
            .frame(height: 180)
            .tint(Gradient(colors: [.red, .orange, .yellow, .green]))

            Text(performanceLabel)
                .font(.title3.weight(.semibold))
                .foregroundStyle(accentColor)
                .padding(.horizontal, 20)
                .padding(.vertical, 8)
                .background(accentColor.opacity(0.15), in: Capsule())

            Spacer()

            Button {
                dismiss()
            } label: {
                Text("Done")
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 14)
            }
            .buttonStyle(.borderedProminent)
            .padding(.horizontal, 24)
            .padding(.bottom, 16)
        }
        .presentationDetents([.medium])
        .presentationDragIndicator(.visible)
    }
}

#Preview {
    ContentView()
}

