//
//  EditProfile.swift
//  Task-State
//
//  Created by GU on 07/01/26.
//

import SwiftUI

struct EditProfile: View {
    @Binding var profile : Profile
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        VStack(spacing: 20){
            Text("Edit Profile")
                .font(.largeTitle)
            
            Image("ProfilePicture")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .clipShape(.circle)
            
            VStack(alignment : .leading,spacing : 10){
                HStack{
                    Text("Name :")
                    Spacer()
                    TextField("Enter username", text: $profile.name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                .padding([.leading,.trailing], 10)
                Divider()
                
                HStack{
                    Text("Age :")
                    Spacer()
                    Stepper("\(Int(profile.age)%153)", value: $profile.age, step: 1)
                }
                .padding([.leading,.trailing], 10)
                Divider()
                
                HStack{
                    Text("Role :")
                    Spacer()
                    Picker("Select role", selection: $profile.role){
                        Text("Student").tag("Student")
                        Text("Developer").tag("Developer")
                        Text("Designer").tag("Designer")
                        Text("Faculty").tag("Faculty")
                    }
                    .pickerStyle(.menu)
                }
                .padding([.leading,.trailing], 10)
                Divider()
                
                HStack{
                    Toggle("Public Profile", isOn: $profile.status)
                }
                .padding([.leading,.trailing], 10)
            }
            .padding(20)
            .background(.gray.opacity(0.1))
            .cornerRadius(20)
            
            Button {
                dismiss()
            } label: {
                Text("Save Changes")
                    .font(.headline)
                    .padding()
                    .background(.blue)
                    .foregroundStyle(.white)
                    .cornerRadius(12)
            }
            Spacer()
        }
        //EditProfile(profile : $profile)
    }
}

#Preview {
    EditProfile(
            profile: .constant(
                Profile(
                    name: "Saksham",
                    age: 21,
                    role: "Developer",
                    status: false
                )
            )
        )
}
