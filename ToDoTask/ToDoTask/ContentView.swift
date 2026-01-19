//
//  ContentView.swift
//  ToDoTask
//
//  Created by GU on 12/01/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Task", systemImage: "list.bullet"){
                TaskTabView()
            }
            Tab("Summary", systemImage: "chart.bar.fill"){
                SummaryTabView()
            }
        }
    }
}

#Preview {
    ContentView()
        .environment(TaskCollection())
}
