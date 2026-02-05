//
//  TicTacToe.swift
//  Grid
//
//  Created by Prem Kumar on 04/02/26.
//

import SwiftUI

struct TicTacToe: View {
    @State var turn = true
    @State var state = [[" ", " ", " "],
                        [" ", " ", " "],
                        [" ", " ", " "]]
    @State var won = false
    
    var body: some View {
        Grid(horizontalSpacing: 10, verticalSpacing: 10){
            ForEach(0...2, id: \.self){ cellc in
                GridRow{
                    ForEach(0...2, id: \.self){ cellr in
                        ZStack{
                            Rectangle()
                                .foregroundStyle(.yellow)
                                .frame(width: 120, height: 180)
                                .clipShape(RoundedRectangle(cornerRadius: 18))
                            Button{
                                if state[cellc][cellr] == " "{
                                    if turn{
                                        state[cellc][cellr] = "1"
                                    }else{
                                        state[cellc][cellr] = "0"
                                    }
                                    if isWinning(){
                                        won = true
                                    }else{
                                        turn.toggle()
                                    }
                                    
                                }
                                
                                }label: {
                                    Text(state[cellc][cellr])
                                        .font(.largeTitle)
                                        .frame(minWidth: 120, minHeight: 180)
                                        
                                }
                        }
                    }
                }
            }
        }
        Text(turn ? "Player 1" : "Player 2")
            .font(.title)
        VStack{
            Text(won ? "\(turn ? "Player 1" : "Player 2") won" : "")
                .font(.largeTitle)
        }
        .frame(width: 200, height: 50)
        
        Button{
            resetGame()
        }label: {
            Image(systemName: "arrow.trianglehead.2.clockwise.rotate.90.circle.fill")
                .font(.system(size: 70))
        }
        
        
        
    }
    func isWinning() -> Bool {
        let p = turn ? "1" : "0"

        if state[0][0] == p && state[0][1] == p && state[0][2] == p {
            return true
        } else if state[1][0] == p && state[1][1] == p && state[1][2] == p {
            return true
        } else if state[2][0] == p && state[2][1] == p && state[2][2] == p {
            return true
        } else if state[0][0] == p && state[1][0] == p && state[2][0] == p {
            return true
        } else if state[0][1] == p && state[1][1] == p && state[2][1] == p {
            return true
        } else if state[0][2] == p && state[1][2] == p && state[2][2] == p {
            return true
        } else if state[0][0] == p && state[1][1] == p && state[2][2] == p {
            return true
        } else if state[0][2] == p && state[1][1] == p && state[2][0] == p {
            return true
        } else {
            return false
        }
    }
    func resetGame() {
        state = [[" ", " ", " "],
                 [" ", " ", " "],
                 [" ", " ", " "]]
        turn = true
        won = false
    }
}
#Preview {
    TicTacToe()
//    Screen()
}
