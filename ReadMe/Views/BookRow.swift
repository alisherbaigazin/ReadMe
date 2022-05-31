//
//  BookRow.swift
//  ReadMe
//
//  Created by Alisher Baigazin on 28.05.2022.
//

import SwiftUI

struct BookRow: View {
    @Binding var image: UIImage?
    let book: Book
    var body: some View {
        NavigationLink(destination: DetailView(image: $image, book: book)) {
            HStack {
                Book.Image(title: book.title, size: 80)
                TitleAndAuthorStack(book: book, titleFont: .title2, authorFont: .title3)
                    .lineLimit(1)
            }
            .padding(.vertical)
        }
    }
}

struct BookRow_Previews: PreviewProvider {
    static var previews: some View {
        BookRow(image: .constant(nil), book: Book())
    }
}
