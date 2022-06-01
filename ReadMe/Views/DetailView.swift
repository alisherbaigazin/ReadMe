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
    @State var isAlertPresented = false
    @State var book: Book
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                BookMark(book: book)
                TitleAndAuthorStack(book: book, titleFont: .title, authorFont: .title2)
            }
            Spacer()
            Divider()
            TextReview(book: book)
            Divider()
            Spacer()
            VStack {
                Book.Image(title: book.title)
                    .onTapGesture {
                        isSheetPresented = true
                    }
                if image != nil {
                    Button("Delete Image") {
                        isAlertPresented.toggle()
                    }
                    .padding()
                }
            }
            Spacer()
        }
        .padding(.horizontal)
        .sheet(isPresented: $isSheetPresented) {
            PHPickerViewController.View(image: $image)
        }
        .alert("Are you sure?", isPresented: $isAlertPresented) {
            Button("Delete", role: .destructive) {
                image = nil
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(image: .constant(UIImage()), book: .init())
    }
}
