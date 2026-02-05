//
//  TeamAddEditView.swift
//  TeamInformation
//
//  Created by Probeer on 02/02/26.
//

import SwiftUI

enum TeamAddEditViewMode {
    case add
    case edit(Team)
}

struct TeamAddEditView: View {
    @State private var cohortNumber: Int = 1
    @State private var teamNumber: Int = 1
    @State private var studentName: String = ""
    @State private var studentAdmissionNumber: String = ""
    @State private var isStudentCSECore: Bool = false
    @State private var studentSpecialization: CSESpecialization? = .none
    @State private var appName: String = ""
    @State private var appDescription: String = ""
    @State private var appMilestone: AppMilestone? = .none
    @State private var appMilestoneCompletionDate: Date = Date()
    
    @Environment(\.dismiss) var dismiss
    
    @Environment(Teams.self) var teams
    
    //@Binding var teams: Teams
    
    let mode: TeamAddEditViewMode
    
    var title: String {
        switch mode {
        case .add: return "Add Team"
        case .edit: return "Edit Team"
        }
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    Picker("Cohort", selection: $cohortNumber) {
                        ForEach(1...3, id: \.self) { cohort in
                            Text("\(cohort)")
                        }
                    }
                    Picker("Team", selection: $teamNumber) {
                        ForEach(1...25, id: \.self) { team in
                            Text("\(team)")
                        }
                    }
                    
                    
                } header: {
                    Text("Basic Details")
                }
                
                Section {
                    TextField("Name", text: $studentName)
                    TextField("Admission no.", text: $studentAdmissionNumber)
                    Toggle("Core branch student?", isOn: $isStudentCSECore)
                    VStack(alignment: .leading) {
                        Picker("Specialization", selection: $studentSpecialization) {
                            ForEach(CSESpecialization.allCases, id: \.self) { specialization in
                                Text(specialization.rawValue)
                                    .tag(Optional(specialization))
                            }
                        }
                        .pickerStyle(.navigationLink)
                        .disabled(isStudentCSECore)
                        
                        if isStudentCSECore {
                            Text("Core students can’t select specialization.")
                                .font(.caption)
                                .foregroundStyle(.red)
                        }
                    }
                } header: {
                    Text("Student Details")
                }
                
                Section {
                    TextField("Name", text: $appName)
                    GroupBox {
                        VStack(alignment: .leading) {
                            TextEditor(text: $appDescription)
                                .frame(height: 120)
                            Text("The descritpion must include use of tech stacks used")
                                .foregroundStyle(.secondary)
                        }
                    } label: {
                        Text("Description")
                    }
                    Picker("Milestone", selection: $appMilestone) {
                        ForEach(AppMilestone.allCases, id: \.self) { milestone in
                            Text(milestone.rawValue)
                                .tag(Optional(milestone))
                        }
                    }
                    .pickerStyle(.navigationLink)
                    DatePicker("Date", selection: $appMilestoneCompletionDate, displayedComponents: .date)
                        .datePickerStyle(.compact)
                    
                    
                    
                } header: {
                    Text("App Details")
                }
            }
            .navigationTitle(title)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button(role: .cancel) {
                        dismiss()
                    }
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button(role: .confirm) {
                        switch mode {
                        case .add:
                            addTeam()
                        case .edit(let team):
                            updateTeam(team: team)
                        }
                    }
                }
            }
            .onAppear {
                loadTeam()
            }
        }
    }
    
    func addTeam() {
        let newTeam = Team(cohortNumber: cohortNumber,
                           teamNumber: teamNumber,
                           studentName: studentName,
                           studentAdmissionNumber: studentAdmissionNumber,
                           isStudentCSECore: isStudentCSECore,
                           studentSpecialization: studentSpecialization, appName: appName,
                           appDescription: appDescription,
                           appMilestone: appMilestone,
                           appMilestoneCompletionDate: appMilestoneCompletionDate)
        
        teams.allTeams.append(newTeam)
        
        dismiss()
    }
    
    func loadTeam() {
        guard case .edit(let team) = mode else {
            return
        }
        
        cohortNumber = team.cohortNumber
        teamNumber = team.teamNumber
        studentName = team.studentName
        studentAdmissionNumber = team.studentAdmissionNumber
        isStudentCSECore = team.isStudentCSECore
        studentSpecialization = team.studentSpecialization
        appName = team.appName
        appDescription = team.appDescription
        appMilestone = team.appMilestone
        appMilestoneCompletionDate = team.appMilestoneCompletionDate
    }
    
    func updateTeam(team: Team) {
        team.cohortNumber = cohortNumber
        team.teamNumber = teamNumber
        team.studentName = studentName
        team.studentAdmissionNumber = studentAdmissionNumber
        team.isStudentCSECore = isStudentCSECore
        team.studentSpecialization = studentSpecialization
        team.appName = appName
        team.appDescription = appDescription
        team.appMilestone = appMilestone
        team.appMilestoneCompletionDate = appMilestoneCompletionDate
        
        dismiss()
    }
}

#Preview {
    //@Previewable
    //@State
    //var teams = Teams()
    
    TeamAddEditView(mode: .add)
        .environment(Teams())
}
