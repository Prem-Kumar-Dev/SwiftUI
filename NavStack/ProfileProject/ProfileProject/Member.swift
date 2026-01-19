//
//  Member.swift
//  ProfileProject
//
//  Created by Prem Kumar on 19/01/26.
//

import SwiftUI

struct Member: View {
    var body: some View {
        VStack{
            Text("😴")
                .font(.system(size: 100))
            Text("Prem Kumar")
                .font(.title)
                .bold()
            Text("Lazy")
                .bold()
        }
    }
}

#Preview {
    Member()
}
