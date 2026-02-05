//
//  Calculator.swift
//  Grid
//
//  Created by Prem Kumar on 04/02/26.
//

import SwiftUI

struct Calculator: View {
//    let number: [[String]] = [["7","8","9"],["4","5","6"],["3","2","1"]]
    var body: some View {
        VStack{
            Spacer()
            Grid{
                GridRow{
                    Symbol(text: "delete.left", color: .gray)
                    Symbol(text: "plus.forwardslash.minus", color: .gray)
                    Symbol(text: "percent", color: .gray)
                    Symbol(text: "divide", color: .orange)
                }
                GridRow{
                    Character(text: "7")
                    Character(text: "8")
                    Character(text: "9")
                    Symbol(text: "multiply", color: .orange)
                }
                GridRow{
                    Character(text: "4")
                    Character(text: "5")
                    Character(text: "6")
                    Symbol(text: "minus", color: .orange)
                }
                GridRow{
                    Character(text: "3")
                    Character(text: "2")
                    Character(text: "1")
                    Symbol(text: "plus", color: .orange)
                }
                GridRow{
                    Character(text: "C")
                    Character(text: "0")
                    Character(text: ".")
                    Symbol(text: "equal", color: .orange)
                }
            }
            .padding(.bottom, 50)
        }
    }
}

#Preview {
    Calculator()
}

struct Character: View {
    let text: String
    var body: some View {
        ZStack{
            Circle()
                .foregroundStyle(.gray.opacity(0.5))
            Text(text)
                .foregroundStyle(.white)
                .font(.title)
                .bold()
                
        }
        .frame(width: 60,height: 60)
    }
}
struct Symbol: View {
    let text: String
    let color: Color
    var body: some View {
        ZStack{
            Circle()
                .foregroundStyle(color)
            Image(systemName: text)
                .foregroundStyle(.white)
                .font(.title)
                .bold()
                
        }
        .frame(width: 60,height: 60)
    }
}
