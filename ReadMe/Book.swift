//
//  Book.swift
//  ReadMe
//
//  Created by Alisher Baigazin on 27.05.2022.
//

import Foundation

struct Book {
    let title: String
    let author: String
    
    init(title: String = "Title", author: String = "Author") {
        self.title = title
        self.author = author
    }
}
