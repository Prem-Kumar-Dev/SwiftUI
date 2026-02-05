//
//  TeamListView.swift
//  TeamInformation
//
//  Created by Probeer on 02/02/26.
//

import SwiftUI

struct TeamListView: View {
    //@State private var teams = Teams()
    
    @Environment(Teams.self) var teams
    
    @State private var showTeamAddEditView = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(teams.allTeams) { team in
                    NavigationLink(value: team) {
                        Text("Team \(team.teamNumber)")
                    }
                }
                
            }
            .navigationTitle("Cohort 3")
            .navigationDestination(for: Team.self) { team in
                TeamDetailView(team: team)
            }
            .toolbar {
                Button {
                    showTeamAddEditView.toggle()
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showTeamAddEditView) {
                TeamAddEditView(mode: .add)
            }
        }
    }
}

#Preview {
    TeamListView()
        .environment(Teams())
}
