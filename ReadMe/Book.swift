//
//  Book.swift
//  ReadMe
//
//  Created by Alisher Baigazin on 27.05.2022.
//

import Foundation

struct Book: Identifiable {
    let title: String
    let author: String
    let id = UUID() //no need to note id: \.id in List(Contentview) because Book is Identifiable and has unique id property.
    
    init(title: String = "Title", author: String = "Author") {
        self.title = title
        self.author = author
    }
}

//Book.init()f
