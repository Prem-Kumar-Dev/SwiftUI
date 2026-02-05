//
//  ContentView.swift
//  AppStoreClone
//
//  Created by GU on 20/12/25.
//

import SwiftUI
//struct Category : View {
//    var num : String
//    var body: some View {
//        HStack{
//            Circle().frame(width: 18).overlay(Text(num).foregroundStyle(.white))
//            Text("Category")
//        }
//        .padding(10)
//        .background(.gray.opacity(0.5))
//        .clipShape(.capsule)
//    }
//}

struct ContentView: View {
    let rows = [GridItem(.fixed(80)),
                GridItem(.fixed(80)),
                GridItem(.fixed(80))]
    let adaptive = [GridItem(.adaptive(minimum: 100)),
                    GridItem(.adaptive(minimum: 100)),
                    GridItem(.adaptive(minimum: 100))]
    var body: some View {
        ScrollView(.vertical){
            VStack(alignment: .leading){
                
                HStack{
                    Text("Apps")
                        .font(.largeTitle)
                        .bold()
                    Spacer()
                    Image(.profile)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 48)
                        .clipShape(.circle)
                }
                
                ScrollView(.horizontal, showsIndicators: false){
                    LazyHStack{
                        ForEach(1..<6) { i in
                            Label("Category", systemImage: "\(i).circle.fill")
                                .padding(8)
                                .background(.secondary.opacity(0.6))
                                .clipShape(.capsule)
                        }
                    }
                }
                .padding([.bottom])
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(1..<5) { _ in
                            VStack(alignment: .leading){
                                Text("CONTEXT TEXT")
                                    .font(.subheadline)
                                Text("Annoucment title which can be very long")
                                    .font(.title)
                                
                                ZStack{
                                    Rectangle()
                                        .frame(height: 250)
                                        .foregroundStyle(.tint)
                                        .cornerRadius(20)
                                    Image(.appIcon)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 100)
                                }
                            }
                            .frame(width: 370)
                        }
                    }
                }
                .padding([.bottom])
                
                HStack{
                    Text("Top Apps This Week")
                        .font(.title2)
                        .bold()
                    Image(systemName: "chevron.right")
                        .foregroundStyle(.tint)
                }
                
                ScrollView(.horizontal, showsIndicators: false){
                    LazyHGrid(rows: rows){
                        ForEach(1..<15) { _ in
                           TATW()
                        }
                    }
                }
                .padding([.bottom])
                
                HStack{
                    Text("Browse Categories").font(.title2).bold()
                    Image(systemName: "chevron.right").foregroundStyle(.tint)
                }
                ScrollView(.horizontal, showsIndicators: false){
                    LazyHStack{
                        ForEach(1..<5) { _ in
                            ZStack{
                                Rectangle().frame(width: 180,height: 100).cornerRadius(20).foregroundStyle(.yellow)
                                Text("Category").foregroundStyle(.white).bold().offset(x: -40, y: 25)
                                Rectangle().frame(width: 30, height: 30).cornerRadius(5).offset(x: 60, y: -20)
                            }
                        }
                    }
                }
                .padding([.bottom])
                
                Text("Quick Links").font(.title2).bold()
                ForEach(1..<5) { i in
                    Text("Link \(i)").padding(10)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
