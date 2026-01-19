//
//  StudentView.swift
//  StudentHub
//
//  Created by GU on 10/12/25.
//

import SwiftUI

struct StudentView: View {
    var currentStudent : Student = Student()
    var body: some View {
        VStack{
            HStack{
                Text(currentStudent.firstName)
                Text(currentStudent.lastName)
            }.font(.headline)
            Text("\(currentStudent.age) yrs").font(.subheadline)
        }
    }
}

#Preview {
    StudentView()
}
