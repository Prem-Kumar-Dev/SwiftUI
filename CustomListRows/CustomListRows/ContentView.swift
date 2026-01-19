//
//  ContentView.swift
//  CustomListRows
//
//  Created by Probeer on 08/01/26.
//

import SwiftUI

struct ContentView: View {
    @State private var books: [Book] =  DataModel.books
    
    @State private var searchText: String = ""
    
    @State private var searchGenre: Genre? = .all
    
    var filteredBooks: [Book] {
        books.filter {
            let searchMatch =
                $0.name.localizedCaseInsensitiveContains(searchText) || $0.author.localizedCaseInsensitiveContains(searchText) || searchText.isEmpty
            
            let genreMatch =  $0.genre == searchGenre || searchGenre == .all
            
            return searchMatch && genreMatch
        }
    }
    
    var body: some View {
        TextField("Search by book/author name", text: $searchText)
            .padding()
            .textFieldStyle(.roundedBorder)
        
        ScrollView(.horizontal){
            HStack{
                ForEach(Genre.allCases, id: \.self) { genre in
                    Button {
                        searchGenre = genre
                    } label: {
                        Text(genre.rawValue)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(searchGenre == genre ? .blue : .gray)
                }
            }
            .padding()
        }
        .scrollIndicators(.hidden)
        
        List {
            ForEach(filteredBooks) { book in
                BookRowView(book: book)
            }
        }
    }
}

#Preview {
    ContentView()
}
