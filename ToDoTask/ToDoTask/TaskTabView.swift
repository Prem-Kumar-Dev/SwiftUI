//
//  TaskTabView.swift
//  ToDoTask
//
//  Created by GU on 12/01/26.
//

import SwiftUI

struct TaskTabView: View {
    @Environment(TaskCollection.self) private var taskCollection
    
    @Bindable var newTask : Task = Task(name: "")
    
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    TextField("Add a new Task", text: $newTask.name)
                        .textFieldStyle(.roundedBorder)
                    Button("Add"){
                        taskCollection.addTask(name: newTask.name)
                        newTask.name = ""
                    }
                    .buttonStyle(.borderedProminent)
                }
                .padding()
                
                List{
                    ForEach(taskCollection.tasks) { task in
                        NavigationLink{
                            EditTaskView(task: task)
                        } label: {
                            TaskRowView(task: task)
                        }
                        .swipeActions(edge: .trailing){
                            Button(role: .destructive){
                                taskCollection.tasks.removeAll(where: {$0.name == task.name})
                            }
                        }
                    }
                }
            }
            
            .navigationTitle("Tasks")
        }
    }
}

#Preview {
    TaskTabView()
        .environment(TaskCollection())
}
