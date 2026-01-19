//
//  SummaryTabView.swift
//  ToDoTask
//
//  Created by GU on 12/01/26.
//

import SwiftUI

struct SummaryTabView: View {
    @Environment(TaskCollection.self) private var taskCollection
    
    var totalTask : Int {
        taskCollection.tasks.count
    }
    var totalCompletedTask : Int {
        taskCollection.tasks.filter{ $0.isCompleted }.count
    }
    var body: some View {
        VStack {
            Text("Task Summary")
                .font(.title)
            Text("Total Tasks : \(totalTask)")
            Text("Completed Tasks : \(totalCompletedTask)")
        }
    }
}

#Preview {
    SummaryTabView()
        .environment(TaskCollection())
}
