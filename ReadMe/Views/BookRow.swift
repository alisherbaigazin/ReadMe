//
//  BookRow.swift
//  ReadMe
//
//  Created by Alisher Baigazin on 28.05.2022.
//

import SwiftUI

struct BookRow: View {
    let book: Book
    var body: some View {
        NavigationLink(destination: Text("Second View")) {
            HStack {
                Book.Image(title: book.title)
                VStack(alignment: .leading) {
                    Text(book.title)
                        .font(.title2)
                    Text(book.author)
                        .font(.title3)
                        .foregroundColor(.secondary)
                    Text("\(book.id)")
                        .font(.caption2)
                        .foregroundColor(.secondary)
                }
                .lineLimit(1)
            }
            .padding(.vertical)
        }
    }
}

struct BookRow_Previews: PreviewProvider {
    static var previews: some View {
        BookRow(book: Book())
    }
}
