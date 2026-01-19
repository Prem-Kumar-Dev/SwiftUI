//
//  SwipeActionVIew.swift
//  CustomListRows
//
//  Created by GU on 09/01/26.
//

import SwiftUI

struct SwipeActionVIew: View {
    @State private var books = DataModel.books
    
    var body: some View {
        List{
            ForEach(books) { book in
                BookRowView(book: book)
            }
            .swipeActions(edge: .leading, allowsFullSwipe: false){
                Button {
                    
                } label: {
                    Image(systemName: "star.fill")
                }
                .tint(.accentColor)
            }
            .swipeActions(edge: .trailing, allowsFullSwipe: false){
                Button(role: .destructive){
                    
                } label: {
                    Image(systemName: "trash")
                }
            }
            .swipeActions(edge: .trailing){
                Button{
                    
                } label: {
                    Image(systemName: "pin")
                        
                }
                .tint(.accentColor)
            }
        }
    }
}

#Preview {
    SwipeActionVIew()
}
