//
//  DataModel.swift
//  ToDoTask
//
//  Created by GU on 12/01/26.
//

import Foundation

@Observable
class Task : Identifiable {
    var id = UUID()
    var name : String
    var isCompleted : Bool = false
    
    init(name : String){
        self.name = name
    }
}

@Observable
class TaskCollection {
    var tasks : [Task] = []
    
    func addTask(name : String){
        if(name == "") {
            return
        }
        if tasks.first(where: {$0.name == name}) != nil {
            
        }
        else{
            tasks.append(Task(name: name))
        }
    }
}
