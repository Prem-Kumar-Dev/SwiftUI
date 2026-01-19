//
//  ProfileEditor.swift
//  Task-State
//
//  Created by GU on 07/01/26.
//

import SwiftUI

struct ProfileEditor: View {
    @State private var profile : Profile = Profile(
        name: "Saksham Bansal",
        age: 21,
        role: "Developer",
        status: false
    )
    @State private var goToEdit = false
    var body: some View {
        NavigationStack{
            VStack(spacing: 20){
                Text("Profile")
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
                        Text("\(profile.name)")
                    }
                    .padding([.leading,.trailing], 10)
                    Divider()
                    
                    HStack{
                        Text("Age :")
                        Spacer()
                        Text("\(profile.age)")
                    }
                    .padding([.leading,.trailing], 10)
                    Divider()
                    
                    HStack{
                        Text("Role :")
                        Spacer()
                        Text("\(profile.role)")
                    }
                    .padding([.leading,.trailing], 10)
                    Divider()
                    
                    HStack{
                        Text("Status :")
                        Spacer()
                        Text("\(profile.status ? "Public" : "Private")")
                    }
                    .foregroundStyle(profile.status ? .green : .red)
                    .padding([.leading,.trailing], 10)
                }
                .padding(20)
                .background(.gray.opacity(0.1))
                .cornerRadius(20)
                
                Button {
                    goToEdit = true
                } label: {
                    Text("Edit Profile")
                        .font(.headline)
                        .padding()
                        .background(.blue)
                        .foregroundStyle(.white)
                        .cornerRadius(12)
                }
                Spacer()
            }
            .navigationDestination(isPresented: $goToEdit) {
                EditProfile(profile: $profile)
            }
            //editProfile(profile : $profile)
        }
    }
}

#Preview {
    ProfileEditor()
}

//struct editProfile : View {
//    @Binding var profile : Profile
//    var body : some View {
//        VStack(alignment : .leading, spacing: 15){
//            Text("Edit Profile")
//                .padding(.leading, 150)
//            Text("UserName :")
//            TextField("Enter username", text: $profile.name)
//            .textFieldStyle(RoundedBorderTextFieldStyle())
//            
//            Stepper("Age: \(Int(profile.age))", value: $profile.age, step: 1)
//            
//            Picker("Select role", selection: $profile.role){
//                Text("Student").tag("Student")
//                Text("Developer").tag("Developer")
//                Text("Designer").tag("Designer")
//                Text("Faculty").tag("Faculty")
//            }
//            .pickerStyle(.segmented)
//            Toggle("Public Profile", isOn: $profile.status)
//                
//            Spacer()
//        }
//        .padding()
//        .background(.gray.opacity(0.3))
//    }
//}
