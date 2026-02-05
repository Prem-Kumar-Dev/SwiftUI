//
//  GridExample.swift
//  GridExample
//
//  Created by Prem Kumar on 04/02/26.
//

import SwiftUI

struct GridExample: View {
    var body: some View {
        Grid {
            
            GridRow{
                Text("Row 1")
                ForEach(1...5, id: \.self){ cell in
                    Color.blue
                }
            }
            GridRow{
                Text("Row 2")
                ForEach(1...3, id: \.self){ cell in
                    Color.blue
                }
            }
            GridRow{
                Text("Hello")
                Image(systemName: "globe")
                
            }
            Color.red.frame(height: 0)
            
            GridRow{
                Image(systemName: "leaf")
                Text("IOS")
            }
        }
//        .font(.largeTitle)
    }
}

#Preview {
    GridExample()
}
