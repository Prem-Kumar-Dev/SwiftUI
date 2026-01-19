//
//  BookRowView.swift
//  CustomListRows
//
//  Created by Probeer on 08/01/26.
//

import SwiftUI

struct BookRowView: View {
    var book: Book
    
    var body: some View {
        HStack {
            Image(book.coverImage)
                .resizable()
                .frame(width: 100, height: 125)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(book.name)
                    .font(.title)
                Text(book.author)
                Text(book.genre.rawValue)
                    .font(.caption)
                    .bold()
                    .foregroundStyle(.white)
                    .padding(5)
                    .background(.black)
                    .clipShape(.capsule)
            }
        }
    }
}

#Preview {
    let sampleBook = DataModel.books[0]
    BookRowView(book: sampleBook)
}
