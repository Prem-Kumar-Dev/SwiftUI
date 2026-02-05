//
//  LazyHStackAdaptive.swift
//  Grid
//
//  Created by Prem Kumar on 04/02/26.
//

import SwiftUI

struct LazyHStackAdaptive: View {
    let fixedRows = [GridItem(.fixed(80)),
                 GridItem(.fixed(80))]
    
    let flexiblRows = [GridItem(.flexible()),
                 GridItem(.flexible())]
    
    let adaptiveRows = [GridItem(.adaptive(minimum: 80))]
    
    var body: some View {
        ScrollView(.horizontal){
            LazyHGrid(rows: adaptiveRows, spacing: 20){
                ForEach(1...20, id: \.self){cell in
                    Color.red
                    .frame(width: 100)
                    .overlay{
                        Text("Item \(cell)")
                            .foregroundStyle(.white)
                    }
//                    Color.yellow
//                    .frame(width: 100)
//                    .overlay{
//                        Text("Item \(cell)")
//                            .foregroundStyle(.white)
//                    }
                    
//                    Circle()
//                        .foregroundStyle(.yellow)
//                    .frame(width: 100)
//                    .overlay{
//                        Text("Item \(cell)")
//                            .foregroundStyle(.white)
//                    }
                }
            }
        }
    }
}

#Preview {
    LazyHStackAdaptive()
}
