//
//  LazyVGridView.swift
//  Grid
//
//  Created by Prem Kumar on 04/02/26.
//

import SwiftUI

struct LazyVGridView: View {
    let columns = [GridItem(.fixed(150), spacing: 20),
                   GridItem(.fixed(150), spacing: 20),
                   GridItem(.fixed(150), spacing: 20)]
    var body: some View {
        ScrollView{
            ForEach(1...50, id: \.self){cell in
                LazyVGrid(columns: columns, spacing: 20){
                    Color.yellow
                        .frame(height: 100)
                    Circle()
                        .foregroundStyle(.red)
                        .frame(height: 100)
                    Color.yellow
                        .frame(height: 100)
                }
            }
        }
    }
}

#Preview {
    LazyVGridView()
}
