//
//  ContentView.swift
//  ReadMe
//
//  Created by Alisher Baigazin on 27.05.2022.
//

import SwiftUI

struct ContentView: View {
    @State var library = Library()
    var body: some View {
        NavigationView {
            List(library.sortedBooks /* id: \.id bc it's identifiable or id:\.self bc it's hashable*/) { item in
                BookRow(image: $library.uiImages[item], book: item)
            }
            .navigationTitle("My Library")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
        ContentView()
            .preferredColorScheme(.dark)
    }
}


