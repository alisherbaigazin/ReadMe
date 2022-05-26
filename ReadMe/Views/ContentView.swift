//
//  ContentView.swift
//  ReadMe
//
//  Created by Alisher Baigazin on 27.05.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Book.Image(title: Book().title)
            Text("Hello, world!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
