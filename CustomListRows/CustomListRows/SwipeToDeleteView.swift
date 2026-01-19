//
//  SwipeToDeleteView.swift
//  CustomListRows
//
//  Created by GU on 09/01/26.
//

import SwiftUI

struct SwipeToDeleteView: View {
    @State private var books: [Book] =  DataModel.books
    
    var body: some View {
        List{
            ForEach(books) { book in
                BookRowView(book: book)
            }
            .onDelete(perform: delete)
        }
    }
    
    func delete(offsets: IndexSet){
        books.remove(atOffsets: offsets)
    }
}

#Preview {
    SwipeToDeleteView()
}
