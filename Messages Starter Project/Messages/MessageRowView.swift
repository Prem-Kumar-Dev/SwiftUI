//
//  MessageRowView.swift
//  Messages
//
//  Created by GU on 09/01/26.
//

import SwiftUI

struct MessageRowView: View {
    
    var message: Message
    
    var body: some View {
        HStack{
            Circle()
                .foregroundStyle(message.isRead ? .clear : .blue)
                .frame(width: 15)
            Image(message.contact.image)
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 80)
                .cornerRadius(15)
            
            VStack(alignment: .leading){
                HStack{
                    Text(message.contact.name)
                        .bold()
                    
                    Spacer()
                    
                    Text(message.timestamp.formatted(date: .abbreviated, time: .omitted))
                }
                HStack{
                    Text(message.content)
                    
                    Spacer()
                    
                    Image(systemName: "pin")
                        .foregroundStyle(message.isPinned ? .blue : .clear)
                    Image(systemName: "bell.slash")
                        .foregroundStyle(message.isAlertHidden ? .blue : .clear)
                }

            }
            
        }
    }
    
}

#Preview {
    let sampleMessage = DataModel.messages[0]
    MessageRowView(message : sampleMessage)
}
