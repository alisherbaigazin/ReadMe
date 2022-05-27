//
//  ContentView.swift
//  ReadMe
//
//  Created by Alisher Baigazin on 27.05.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(Library().sortedBooks /* id: \.id */) { item in
                BookRow(book: item)
            }
            .navigationTitle("My Library")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
