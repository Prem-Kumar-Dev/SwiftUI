//
//  FlagCardView.swift
//  CountryFlag
//
//  Created by Prem Kumar on 04/02/26.
//

import SwiftUI

struct FlagCardView: View {
    let flag: Country
    
    var body: some View {
        VStack{
            Image(flag.flag)
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 150)
                .clipped()
            
            Text(flag.name)
                .font(.title2).bold()
                .foregroundStyle(.white)
                .frame(width: 180, height: 20)
                .padding(.horizontal, 20)
                .truncationMode(.tail)
                
            
            Text(flag.capital)
                .font(.title3)
                .foregroundStyle(.white)
                .padding(.bottom,20)
        }
        .frame(width: 180, height: 200)
        .background(.red.opacity(0.5))
        .clipShape(RoundedRectangle(cornerRadius: 18))
    }
}

#Preview {
    FlagCardView(flag: Country(name: "Antigua and Barbuda", capital: "St. John's", flag: "ag"))
}
