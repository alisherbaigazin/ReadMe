//
//  Book views.swift
//  ReadMe
//
//  Created by Alisher Baigazin on 27.05.2022.
//

import SwiftUI

extension Book {
    struct Image: View {
        let title: String
        var body: some View {
            let icon = SwiftUI.Image(title: title) ??
            SwiftUI.Image(systemName: "book")
            
            icon
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
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
            Book.Image(title: Book().title)
            Book.Image(title: "")
            Book.Image(title: "📕")
        }
    }
}
