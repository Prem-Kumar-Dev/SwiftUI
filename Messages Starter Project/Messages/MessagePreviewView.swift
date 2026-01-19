//
//  MessagePreviewView.swift
//  Messages
//
//  Created by GU on 09/01/26.
//

import SwiftUI

struct MessagePreviewView: View {
    var message : Message
    
    var body: some View {
        VStack{
            Text(message.contact.name)
                .bold()
            Text(message.timestamp.formatted(date: .abbreviated, time: .omitted))
                .font(.subheadline)
                .fontWeight(.light)
            
            Spacer()
            
            HStack{
                Image(message.contact.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .clipShape(.circle)
                
                VStack(alignment: .leading){
                    Text(message.content)
                        .padding(10)
                        .background(.secondary.opacity(0.3))
                        .cornerRadius(20)
                        .multilineTextAlignment(.leading)
                        .fixedSize(horizontal: false, vertical: true)
                    
                    Text(message.timestamp.formatted(date: .omitted, time: .shortened))
                        .font(.subheadline)
                        .fontWeight(.light)
                        .offset(x : 10)
                }
            }
        }
        .padding(30)
        .frame(height: 200)
    }
    
}

#Preview {
    MessagePreviewView(message : DataModel.messages[2])
}
