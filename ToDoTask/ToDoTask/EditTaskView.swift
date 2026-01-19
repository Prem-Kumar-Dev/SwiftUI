//
//  EditTaskView.swift
//  ToDoTask
//
//  Created by GU on 12/01/26.
//

import SwiftUI

struct EditTaskView: View {
    @Bindable var task: Task
    
    var body: some View {
        NavigationStack {
            List{
                TextField("Title", text: $task.name)
                Toggle("Completed", isOn: $task.isCompleted)
            }
            .navigationTitle("Edit Task")
        }
    }
}

#Preview {
    EditTaskView(task: Task(name: "Sample"))
}
