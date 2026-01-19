//
//  simpleForm.swift
//  Task-State
//
//  Created by GU on 07/01/26.
//

import SwiftUI

struct simpleForm: View {
    @State private var username = ""
    @State private var password = ""
    @State private var age: Int = 0
    @State private var gender = "Male"
    @State private var hour = 0
    @State private var minute = 0
    var body: some View {
        VStack(alignment: .leading,spacing: 15){
            
            Text("UserName :")
            TextField("Enter username", text: $username)
                .textFieldStyle(.roundedBorder)
            
            Text("Password :")
            SecureField("Enter password", text: $password)
                .textFieldStyle(.roundedBorder)
            
            //Slider(value: $speed, in: 0...100)
            //Text("Speed: \(Int(speed))")
            
            Stepper("Age: \(Int(age))", value: $age, step: 1)
            
            HStack{
                Text("Gender :")
                Spacer()
                Picker("Select Gender", selection: $gender){
                    Text("Male").tag("Male")
                    Text("Female").tag("Female")
                    Text("Other").tag("Other")
                }
                .pickerStyle(.menu)
            }
            Text("Time : ")
            
            HStack(spacing:0){
                Spacer()
                Picker("Time",selection: $hour){
                    ForEach(0..<240) { Text("\(($0)%24)").tag($0)}
                }
                .pickerStyle(.wheel)
                .frame(width: 100)
                .clipped()
                
                Text(":")
                    .font(.title)
                    .padding(.horizontal, 4)
                
                Picker("Time",selection: $minute){
                    ForEach(0..<600) { Text(String(format: "%02d", ($0)%60)).tag($0)}
                }
                .pickerStyle(.wheel)
                .frame(width: 100)
                .clipped()
                Spacer()
            }
            Button{
                
            } label: {
                Text("Login")
                    .foregroundStyle(.white)
            }
        }
        .padding()
    }
}

#Preview {
    simpleForm()
}
