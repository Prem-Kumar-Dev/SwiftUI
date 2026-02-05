//
//  TeamDetailView.swift
//  TeamInformation
//
//  Created by Probeer on 02/02/26.
//

import SwiftUI

struct TeamDetailView: View {
    var team: Team
    
    @State private var showAddEditTeamView = false
    
    //@State private var teams = Teams()
    
    var body: some View {
        List {
            Section {
                VStack(alignment: .leading, spacing: 12) {
                    Text("Basic Details")
                        .font(.title3.bold())
                    
                    HStack {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Cohort Number")
                                .font(.caption)
                                .foregroundColor(.secondary)
                            Text("\(team.cohortNumber)")
                                .font(.headline)
                        }
                        
                        Spacer()
                        
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Team Number")
                                .font(.caption)
                                .foregroundColor(.secondary)
                            Text("\(team.teamNumber)")
                                .font(.headline)
                        }
                    }
                }
                .padding(.vertical, 8)
            }
            
            Section {
                VStack(alignment: .leading, spacing: 12) {
                    Text("Student Details")
                        .font(.title3.bold())
                    
                    VStack(alignment: .leading, spacing: 10) {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Student Name")
                                .font(.caption)
                                .foregroundColor(.secondary)
                            Text(team.studentName)
                                .font(.headline)
                        }
                        
                        Divider()
                        
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Admission No")
                                .font(.caption)
                                .foregroundColor(.secondary)
                            Text(team.studentAdmissionNumber)
                                .font(.headline)
                        }
                        
                        Divider()
                        
                        HStack {
                            Text("Core Branch")
                                .font(.caption)
                                .foregroundColor(.secondary)
                            Spacer()
                            Text(team.isStudentCSECore ? "Yes" : "No")
                                .font(.headline)
                        }
                        
                        Divider()
                        
                        HStack {
                            Text("Specialization")
                                .font(.caption)
                                .foregroundColor(.secondary)
                            Spacer()
                            Text(team.studentSpecialization?.rawValue ?? "Not Selected")
                                .font(.headline)
                        }
                    }
                }
                .padding(.vertical, 8)
            }
            
            Section {
                VStack(alignment: .leading, spacing: 12) {
                    Text("App Details")
                        .font(.title3.bold())
                    
                    VStack(alignment: .leading, spacing: 10) {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("App Name")
                                .font(.caption)
                                .foregroundColor(.secondary)
                            Text(team.appName)
                                .font(.headline)
                        }
                        
                        Divider()
                        
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Description")
                                .font(.caption)
                                .foregroundColor(.secondary)
                            
                            Text(team.appDescription)
                                .foregroundColor(.secondary)
                                .fixedSize(horizontal: false, vertical: true)
                        }
                        
                        Divider()
                        
                        HStack {
                            Text("Milestone")
                                .font(.caption)
                                .foregroundColor(.secondary)
                            Spacer()
                            Text(team.appMilestone?.rawValue ?? "Not Selected")
                                .font(.headline)
                        }
                        
                        Divider()
                        
                        HStack {
                            Text("Completion Date")
                                .font(.caption)
                                .foregroundColor(.secondary)
                            Spacer()
                            Text(team.appMilestoneCompletionDate.formatted(date: .abbreviated, time: .omitted))
                                .font(.headline)
                        }
                    }
                }
                .padding(.vertical, 8)
            }
        }
        .listStyle(.insetGrouped)
        .navigationTitle("Team Details")
        .toolbar {
            Button {
                showAddEditTeamView.toggle()
            } label: {
                Text("Edit")
            }
        }
        .sheet(isPresented: $showAddEditTeamView) {
            TeamAddEditView(mode: .edit(team))
        }
    }
}

#Preview {
    let team = Team(
        cohortNumber: 1,
        teamNumber: 5,
        studentName: "Probeer Sahw",
        studentAdmissionNumber: "CSE2026A12",
        isStudentCSECore: false,
        studentSpecialization: .machineLearning,
        appName: "Health Tracker",
        appDescription: "An app to monitor daily health data using HealthKit.",
        appMilestone: .prototypeReady,
        appMilestoneCompletionDate: Date()
    )
    
    NavigationStack {
        TeamDetailView(team: team)
    }
}
