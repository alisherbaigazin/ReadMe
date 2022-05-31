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
    let id = UUID() //no need to note id: \.id in List(Contentview) because Book is Identifiable and has unique id property.

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
    
    init(title: String = "Title", author: String = "Author") {
        self.title = title
        self.author = author
    }
}

//Book.init()
