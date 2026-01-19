//
//  ToDoList.swift
//  LayoutFundamentals
//
//  Created by GU on 20/12/25.
//

import SwiftUI

struct ToDoTask : Identifiable {
    var id  = UUID()
    var title : String
    var description : String
}

struct ToDoList: View {
    @State var tasks = [ToDoTask(title: "Title", description: "Some random text that will go here is put here or whatever")]
    
    var body: some View {
        Text("To Do List").font(.largeTitle).bold()
        ZStack(alignment: .bottom){
            ScrollView(.vertical) {
                ForEach(tasks) {task in
                    VStack(alignment: .leading){
                        Text(task.title).bold()
                        Text(task.description)
                    }
                    .padding()
                    .background(.mint.opacity(0.3))
                    .clipShape(.rect(cornerRadius: 15))
                }
            }
            Button {
                tasks.append(ToDoTask(title: "Title", description: "Some random text that will go here is put here or whatever"))
            } label: {
                Image(systemName: "plus")
                    .font(.largeTitle)
                    .padding()
                    .foregroundStyle(.white)
                    .background(.blue)
                    .clipShape(.capsule)
            }
        }
    }
}

#Preview {
    ToDoList()
}
