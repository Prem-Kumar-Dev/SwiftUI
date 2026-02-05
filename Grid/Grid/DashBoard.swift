//
//  DashBoard.swift
//  Grid
//
//  Created by Prem Kumar on 04/02/26.
//

import SwiftUI

struct DashBoard: View {
    var body: some View {
        Grid(horizontalSpacing: 20, verticalSpacing: 20){
            ZStack{
                Rectangle()
                    .foregroundStyle(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 18))
                    .frame(height: 200)
                
                Text("Section 1")
                    .font(.largeTitle).bold()
                    .foregroundStyle(.white)
            }

            GridRow{
                ZStack{
                    Rectangle()
                        .foregroundStyle(.orange)
                        .clipShape(RoundedRectangle(cornerRadius: 18))
                    Text("Section 2")
                        .font(.largeTitle).bold()
                        .foregroundStyle(.white)
                }
                ZStack{
                    Rectangle()
                        .foregroundStyle(.green)
                        .clipShape(RoundedRectangle(cornerRadius: 18))
                    Text("Section 3")
                        .font(.largeTitle).bold()
                        .foregroundStyle(.white)
                }
            }
            .frame(height: 200)
            
            ZStack{
                Rectangle()
                    .foregroundStyle(.yellow)
                    .clipShape(RoundedRectangle(cornerRadius: 18))
                Text("Section 4")
                    .font(.largeTitle).bold()
                    .foregroundStyle(.white)
            }
        }
        .padding()
                
    }
}

#Preview {
    DashBoard()
}
