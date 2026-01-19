//
//  Collections.swift
//  LayoutFundamentals
//
//  Created by GU on 20/12/25.
//

import SwiftUI

struct Collections: View {
    var fruits = ["Apple", "Banana", "Orange"]
    
    
    var body: some View {
        
        // SwiftUI(ForEach) requires every Item to have a stable Identity, So It wants every Item to have an ID. String conforms to hashable and we are converting it into hash id.
        ForEach(fruits, id : \.self) { fruit in
            Text(fruit)
                .font(.largeTitle)
                .bold()
        }
    }
}

#Preview {
    Collections()
}
