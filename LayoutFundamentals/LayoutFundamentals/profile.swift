//
//  profile.swift
//  LayoutFundamentals
//
//  Created by GU on 20/12/25.
//

import SwiftUI

struct Student : Identifiable {
    // automatically generates unique object Identity
    var id = UUID()
    var image : String
    var name : String
}
struct ProfileView : View {
    var student : Student
    
    var body: some View {
        HStack(spacing: 15){
            Image("\(student.image)")
                .resizable()
                .scaledToFit()
                .clipShape(.circle)
                .frame(width: 60)
            
            Text(student.name)
                .font(.title)
                .bold()
            
            Spacer()
        }
        .padding()
        .background(.mint.opacity(0.5))
        .clipShape(.rect(cornerRadius: 15))
    }
}
struct profile: View {
    var students = [Student(image: "Myphoto", name: "Saksham"),
                    Student(image: "Myphoto", name: "Priyanshu"),
                    Student(image: "Myphoto", name: "Arshit"),
                    Student(image: "Myphoto", name: "Harshita")]
    
    var body: some View {
        ForEach(students) { stu in
            ProfileView(student: stu)
        }
    }
}

#Preview {
    profile()
}
