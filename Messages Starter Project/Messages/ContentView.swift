//
//  ContentView.swift
//  Messages
//
//  Created by Probeer on 08/01/26.
//

import SwiftUI

struct ContentView: View {
    
    @State var messages : [Message] = DataModel.messages.sorted {
        $0.timestamp > $1.timestamp
    }
    
    var body: some View {
        Text("Messages")
            .font(.title)
            .bold()
        
        ScrollView(.horizontal){
            HStack{
                ForEach($messages){ $message in
                    if(message.isPinned){
                        VStack{
                            Image(message.contact.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 100, height: 100)
                                .cornerRadius(20)
                            Text(message.contact.name)
                        }
                        .contextMenu{
                            Button{
                                message.isPinned.toggle()
                            } label: {
                                Label(message.isPinned ? "Unpin" : "Pin", systemImage: "pin")
                            }
                            
                            Button{
                                message.isRead.toggle()
                            } label: {
                                Label(message.isRead ? "Mark as Unread" : "Mark as Read", systemImage: "message.badge")
                            }
                            
                            Button{
                                message.isAlertHidden.toggle()
                            } label: {
                                Label(message.isAlertHidden ? "Show Alerts" : "Hide Alerts", systemImage: "bell.slash")
                            }
                            
                            Button(role: .destructive){
                                messages.removeAll { $0.id == message.id }
                            } label: {
                                Label("Delete", systemImage: "trash")
                            }
                        } preview: {
                            MessagePreviewView(message: message)
                        }
                    }
                }
            }
        }
        .scrollIndicators(.hidden)
        
        List {
            ForEach($messages) { $message in
                MessageRowView(message: message)
                    .swipeActions(edge: .leading){
                        Button{
                            message.isRead.toggle()
                        } label: {
                            Image(systemName: message.isRead ? "message.badge.fill" : "checkmark.message")
                                .tint(.blue)
                        }
                    }
                    .swipeActions(edge: .trailing){
                        Button(role : .destructive){
                            messages.removeAll { $0.id == message.id }
                        } label: {
                            Image(systemName: "trash")
                        }
                    }
                    .swipeActions(edge: .trailing){
                        Button{
                            message.isAlertHidden.toggle()
                        } label: {
                            Image(systemName: "bell.slash")
                                .tint(.blue)
                        }
                    }
                    .contextMenu{
                        Button{
                            message.isPinned.toggle()
                        } label: {
                            Label(message.isPinned ? "Unpin" : "Pin", systemImage: "pin")
                        }
                        
                        Button{
                            message.isRead.toggle()
                        } label: {
                            Label(message.isRead ? "Mark as Unread" : "Mark as Read", systemImage: "message.badge")
                        }
                        
                        Button{
                            message.isAlertHidden.toggle()
                        } label: {
                            Label(message.isAlertHidden ? "Show Alerts" : "Hide Alerts", systemImage: "bell.slash")
                        }
                        
                        Button(role: .destructive){
                            messages.removeAll { $0.id == message.id }
                        } label: {
                            Label("Delete", systemImage: "trash")
                        }
                    } preview: {
                        MessagePreviewView(message: message)
                    }
            }
        }
        .onChange(of: messages) {
            messages.sort {
                if($0.isPinned != $1.isPinned){
                    return $0.isPinned
                }
                return $0.isPinned && !$1.isPinned
            }
        }
    }
}

#Preview {
    ContentView()
}
