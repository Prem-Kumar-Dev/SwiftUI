//
//  Mission.swift
//  dataflow
//
//  Created by GU on 07/01/26.
//

import SwiftUI

struct Mission: View {
    @State var missionActive:Bool = true
    var body: some View {
        VStack{
            if missionActive==true{
                Text("🟢 Mission Active")
                    .font(.title)
                    .bold()
                Text("Main Control Panel")
                    .font(.title2)
                    .bold()
                    .foregroundStyle(.gray)
                    .padding()
                Button(action: {
                    missionActive.toggle()
                }, label: {Text("Pause Mission")
                        .padding()
                        .foregroundStyle(.white)
                        .background(.blue)
                        .clipShape(.capsule)
                    })
                Text("Emergency Control Panel")
                    .font(.title2)
                    .bold()
                    .foregroundStyle(.gray)
                    .padding()
                Button(action: {
                    missionActive.toggle()
                }, label: {Text("Emergency Stop")
                        .padding()
                        .foregroundStyle(.white)
                        .background(.blue)
                        .clipShape(.capsule)
                    })
            }
            else{
                MissionCheck(missionActive: $missionActive)
            }
        }
    }
}

#Preview {
    Mission()
}

struct MissionCheck:View {
    @Binding var missionActive:Bool
    var body: some View {
        Text("🔴 Mission Paused")
            .font(.title)
            .bold()
        Text("Main Control Panel")
            .font(.title2)
            .bold()
            .foregroundStyle(.gray)
            .padding()
        Button(action: {
            missionActive.toggle()
        }, label: {Text("Start Mission")
                .padding()
                .foregroundStyle(.white)
                .background(.blue)
                .clipShape(.capsule)
            })
        Text("Emergency Control Panel")
            .font(.title2)
            .bold()
            .foregroundStyle(.gray)
            .padding()
        Button(action: {
            missionActive=false
        }, label: {Text("Emergency Stop")
                .padding()
                .foregroundStyle(.white)
                .background(.blue)
                .clipShape(.capsule)
            })
    }
}
