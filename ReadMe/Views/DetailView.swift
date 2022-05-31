//
//  DetailView.swift
//  ReadMe
//
//  Created by Alisher Baigazin on 28.05.2022.
//

import SwiftUI
import PhotosUI

struct DetailView: View {
    @Binding var image: UIImage?
    @State var isSheetPresented = false
    let book: Book
    var body: some View {
        VStack(alignment: .leading) {
            TitleAndAuthorStack(book: book, titleFont: .title, authorFont: .title2)
            Book.Image(title: book.title)
                .onTapGesture {
                    isSheetPresented = true
                }
            Spacer()
        }
        .padding(.horizontal)
        .sheet(isPresented: $isSheetPresented) {
            PHPickerViewController.View(image: $image)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(image: .constant(nil), book: .init())
    }
}
