//
//  TaskRowView.swift
//  ToDoTask
//
//  Created by GU on 12/01/26.
//

import SwiftUI

struct TaskRowView: View {
    @Bindable var task : Task
    
    var body: some View {
        Toggle(task.name, isOn: $task.isCompleted)
    }
}

#Preview {
    TaskRowView(task: Task(name: "Sample"))
}
