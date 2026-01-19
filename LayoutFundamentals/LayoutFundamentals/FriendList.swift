//
//  FriendList.swift
//  LayoutFundamentals
//
//  Created by GU on 20/12/25.
//

import SwiftUI

struct FriendList: View {
    
    @State var friendList = ["Arshit","Priyanshu","Prem","Swastik","Gaurav"]
    
    var body: some View {
        
        ForEach(friendList, id: \.self) { friend in
            Text(friend)
                .font(.largeTitle)
        }
        Button("Add Friend") {
            friendList.append("Harshita")
        }
        .padding()
        .foregroundStyle(.white)
        .background(.blue.opacity(0.5))
        .clipShape(.rect(cornerRadius: 15))
    }
}

#Preview {
    FriendList()
}
