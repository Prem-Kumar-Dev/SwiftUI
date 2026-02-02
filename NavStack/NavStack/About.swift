//
//  About.swift
//  NavStack
//
//  Created by Prem Kumar on 25/01/26.
//

import SwiftUI

struct About: View {
    var body: some View {
        ZStack{
            Color.gray.opacity(0.2)
                .ignoresSafeArea()
            VStack{
                Image(systemName: "graduationcap.fill")
                    .font(.largeTitle)
                    .frame(width: 300, height: 200)
                    .background(.cyan)
                Divider()
                
                Text("We are a team of 3 developer who met in a college canteen while avoiding a Data Structures assignment")
                    .font(.title3)
                
                
                List{
                    HStack{
                        Image(systemName: "person.fill")
                        Text("John Doe")
                    }
                }
                .foregroundStyle(.pink)
            }
            .frame(width: 300)
            .padding(40)
            .background(.green.opacity(0.2))
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .navigationTitle("About us")
            
            
            
        }
        
    }
}

#Preview {
    NavigationStack{
        About()
    }
}
