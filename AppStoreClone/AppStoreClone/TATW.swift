//
//  TATW.swift
//  AppStoreClone
//
//  Created by Prem Kumar on 04/02/26.
//

import SwiftUI

struct TATW: View {
    var body: some View {
        HStack{
            Image(.appIcon)
                .resizable()
                .scaledToFit()
                .frame(width: 50)
            VStack(alignment: .leading){
                Text("App Name").fontWeight(.semibold)
                Text("Descrition text goes here")
            }
            Spacer(minLength: 60)
            Button {
                print("App Downloading")
            } label: {
                Text("Get")
                    .foregroundStyle(.white)
                    .padding([.leading, .trailing], 10)
                    .padding(5)
                    .background(.tint)
                    .clipShape(.rect(cornerRadius: 20))
            }
        }
    }
}

#Preview {
    TATW()
}
