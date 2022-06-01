//
//  Book.swift
//  ReadMe
//
//  Created by Alisher Baigazin on 27.05.2022.
//

import Foundation
//import SwiftUI

struct Book: Hashable, Identifiable {
    let title: String
    let author: String
    let id = UUID() //RANDOM ID _ no need to note id: \.id in List(Contentview) because Book is Identifiable and has unique id property.
    var needRead: Bool
    var textReview: String

// without extension of Book, need import SwiftUI for Image View and etc.
    
//    struct Image: View {
//        let title: String
//        var size: CGFloat?
//        var body: some View {
//            let icon = SwiftUI.Image(title: title) ??
//            SwiftUI.Image(systemName: "book")
//            
//            icon
//                .resizable()
//                .scaledToFit()
//                .frame(width: size, height: size)
//                .foregroundColor(.secondary)
//        }
//    }
    
    init(title: String = "Title", author: String = "Author", needRead: Bool = true, textReview: String = "") {
        self.title = title
        self.author = author
        self.needRead = needRead
        self.textReview = textReview
    }
}
