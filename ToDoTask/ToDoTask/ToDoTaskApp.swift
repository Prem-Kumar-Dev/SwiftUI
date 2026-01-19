//
//  ToDoTaskApp.swift
//  ToDoTask
//
//  Created by GU on 12/01/26.
//

import SwiftUI

@main
struct ToDoTaskApp: App {
    @State var taskCollection = TaskCollection()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(taskCollection)
        }
    }
}
