//
//  TimePass.swift
//  Task-State
//
//  Created by GU on 07/01/26.
//

import SwiftUI

struct TimePass: View {
    @State var curState : Bool = false
    
    var body: some View {
        VStack(spacing: 15){
            Label(curState ? "Not Playing" : "Now Playing", systemImage: "music.note")
                .font(.title)
            Text("Music is \(curState ? "on" : "off")")
            
            Button(action: {
                curState.toggle()
            }, label: {
                Image(systemName: curState ? "pause.circle.fill" : "play.circle.fill")
                    .font(.largeTitle)
            })
        }
    }
}

#Preview {
    TimePass()
}
