//
//  ContentView.swift
//  StudentHub
//
//  Created by GU on 10/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Students").font(.largeTitle)
            StudentView(currentStudent: Student(firstName: "Ravi",lastName : "Verma", age : 20))
            StudentView(currentStudent: Student(firstName: "Salini",lastName : "Sharma", age : 21))
            StudentView(currentStudent: Student(firstName: "Amit",lastName : "Holay", age : 21))
        }
        .padding()
    }
}
#Preview {
    ContentView()
}
