//
//  onMoveView.swift
//  CustomListRows
//
//  Created by GU on 09/01/26.
//

import SwiftUI

struct onMoveView: View {
    @State private var books: [Book] =  DataModel.books
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(books) { book in
                    BookRowView(book: book)
                }
                .onMove(perform: moveItem)
            }
            .toolbar {
                EditButton()
            }
        }
    }
    
    func moveItem(fromOffsets: IndexSet, toOffset: Int) {
        books.move(fromOffsets: fromOffsets, toOffset: toOffset)
    }
}

#Preview {
    onMoveView()
}
