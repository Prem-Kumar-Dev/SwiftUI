//
//  Hstack task 2.swift
//  LayoutFundamentals
//
//  Created by GU on 12/12/25.
//

import SwiftUI

struct Hstack_task_2: View {
    var body: some View {
        HStack{
            Text("Expertise : ").fontWeight(.bold).font(.title)
            Text("Go").padding().background(.blue).cornerRadius(50)
            Text("Swift").padding().background(.yellow).cornerRadius(50)
            Text("Python").padding().background(.green).cornerRadius(50)
        }
    }
}

#Preview {
    Hstack_task_2()
}
