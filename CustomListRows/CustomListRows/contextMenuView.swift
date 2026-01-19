//
//  contextMenuView.swift
//  CustomListRows
//
//  Created by GU on 09/01/26.
//

import SwiftUI

struct contextMenuView: View {
    @State private var books: [Book] =  DataModel.books
    
    var body: some View {
        List {
            ForEach(books) { book in
                BookRowView(book: book)
            }
            .contextMenu() {
                Button{
                    
                } label: {
                    Label("Pin", systemImage: "pin")
                }
                
                Button{
                    
                } label: {
                    Label("Share", systemImage: "square.and.arrow.up")
                }
            }
        }
        
    }
}

#Preview {
    contextMenuView()
}
