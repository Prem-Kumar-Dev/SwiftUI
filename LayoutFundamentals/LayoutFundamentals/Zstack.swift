//
//  Zstack.swift
//  LayoutFundamentals
//
//  Created by GU on 12/12/25.
//

import SwiftUI

struct Zstack: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 40).fill(.cyan).frame(width: 250, height : 250).zIndex(1)
            
            Image(systemName: "brain").foregroundStyle(.white).font(.system(size: 80)).bold().zIndex(3)
            
            RoundedRectangle(cornerRadius: 40).fill(.yellow).frame(width: 150, height : 150).zIndex(2)
        }
    }
}

#Preview {
    Zstack()
}
