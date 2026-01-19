//
//  AboutUs.swift
//  ProfileProject
//
//  Created by Prem Kumar on 19/01/26.
//

import SwiftUI

struct AboutUs: View {
    var body: some View {
        ZStack{
            Color.gray
                .ignoresSafeArea()
                .opacity(0.2)
            List{
                Section{
                    Rectangle()
                        .foregroundStyle(.green)
                        .cornerRadius(20)
                        .overlay(){
                            Image(systemName: "graduationcap.fill")
                                .font(.system(size: 100))
                        }
                    Text("We are a team of 3 devs who met in a colleg canteen while avoiding a Data Structures assignment")
                        .font(.title3)
                }
                .frame(height:200)
                Section{
                    NavigationLink(destination: Member()){
                        HStack{
                            Image(systemName: "person.fill")
                            Text("Prem Kumar")
                        }
                    }
                }header: {
                    Text("Members")
                }
                
            }
        
            .background(.white)
            
        }
        .navigationTitle("About")
       
    }
}

#Preview {
    AboutUs()
}
