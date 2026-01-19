//
//  zstack task 2.swift
//  LayoutFundamentals
//
//  Created by GU on 12/12/25.
//

import SwiftUI

struct zstack_task_2: View {
    var body: some View {
        ZStack{
            Image(.myphoto).resizable().scaledToFit().clipShape(Circle()).overlay(
                Circle().stroke(.primary, lineWidth: 20)
            ).shadow(radius: 20)
            Circle().foregroundStyle(.blue.opacity(0.4)).frame(width: 50).overlay(
                Text("25").font(.system(size: 25)).foregroundStyle(.white).bold()
            ).offset(x: 100,y: 85)
            Image(.avengers).resizable().scaledToFit().clipShape(.circle).frame(width: 50).offset(x: 100,y: -85)
        }
    }
}

#Preview {
    zstack_task_2()
}
