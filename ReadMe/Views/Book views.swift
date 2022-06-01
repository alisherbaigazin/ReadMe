//
//  Book views.swift
//  ReadMe
//
//  Created by Alisher Baigazin on 27.05.2022.
//

import SwiftUI

struct BookMark: View {
    @State var book: Book
    var body: some View {
        Button {
            book.needRead.toggle()
        } label: {
            Image(systemName:  book.needRead ? "bookmark" : "bookmark.fill")
                .font(.system(size: 48, weight: .light))
        }
    }
}

struct TitleAndAuthorStack: View {
    let book: Book
    let titleFont: Font
    let authorFont: Font
    var body: some View {
        VStack(alignment: .leading) {
            Text(book.title)
                .font(titleFont)
            Text(book.author)
                .font(authorFont)
                .foregroundColor(.secondary)
//            Text("\(book.id)")
//                .font(.caption2)
//                .foregroundColor(.secondary)
        }
    }
}

struct TextReview: View {
    @State var book: Book
    var body: some View {
        TextField("Text Review", text: $book.textReview)
    }
}

extension Book {
    struct Image: View {
        let title: String
        var size: CGFloat?
        var body: some View {
            let icon = SwiftUI.Image(title: title) ??
            SwiftUI.Image(systemName: "book")

            icon
                .resizable()
                .scaledToFit()
                .frame(width: size, height: size)
                .foregroundColor(.secondary)
        }
    }
}

extension Image {
    init?(title: String) {
        guard let character = title.first, case let systemName = "\(character.lowercased()).square", UIImage(systemName: systemName) != nil
        else {
            return nil
        }
        self.init(systemName: systemName)
    }
}

struct Book_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            HStack {
                BookMark(book: Book())
                TitleAndAuthorStack(book: .init(), titleFont: .title, authorFont: .title2)
            }
            Book.Image(title: Book().title)
            Book.Image(title: "")
            Book.Image(title: "📕")
            Image(title: "Square")
        }
    }
}
