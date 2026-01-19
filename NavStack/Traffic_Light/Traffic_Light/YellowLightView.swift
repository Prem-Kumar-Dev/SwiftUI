//
//  YellowLightView.swift
//  Traffic_Light
//
//  Created by Prem Kumar on 19/01/26.
//

import SwiftUI

struct YellowLightView: View {
    var body: some View {
        ZStack{
            Color.yellow
                .ignoresSafeArea()

            NavigationLink(destination: GreenLightView()){
                HStack{
                    Image(systemName: "circle.fill")
                    Text("Go to Green")
                }
                .foregroundStyle(.green)
                .font(.largeTitle)
            }
            .navigationTitle("Yellow")
        }
    }
}

#Preview {
    YellowLightView()
}
