//
//  RedLightView.swift
//  Traffic_Light
//
//  Created by Prem Kumar on 19/01/26.
//

import SwiftUI

struct RedLightView: View {
    var body: some View {
        ZStack{
            Color.red
                .ignoresSafeArea()

            NavigationLink(destination: YellowLightView()){
                HStack{
                    Image(systemName: "circle.fill")
                    Text("Go to Yellow")
                }
                .foregroundStyle(.yellow)
                .font(.largeTitle)
            }
            .navigationTitle("Red")
        }
        
    }
}

#Preview {
    RedLightView()
}
