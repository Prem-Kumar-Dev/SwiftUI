//
//  EditBookView.swift
//  CustomListRows
//
//  Created by GU on 09/01/26.
//

import SwiftUI

struct EditBookView: View {
    @State private var books: [Book] =  DataModel.books
    
    var body: some View {
        NavigationStack{
            List($books, editActions: .all) { $book in
                BookRowView(book: book)
            }
            .toolbar {
                EditButton()
            }
        }
    }
}

#Preview {
    EditBookView()
}
