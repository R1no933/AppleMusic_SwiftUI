//
//  SearchNavigationUIKit.swift
//  AppleMusic_SwiftUI
//
//  Created by Dmitriy Baskakov on 19.09.2022.
//

import SwiftUI

struct SearchNavigationUIKit: View {
    
    @State private var searching = ""
    @State private var placeholder = "Ваша медиатека"
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                
                Divider()
                    .padding(.bottom, 5)
                
                Text("Поиск по категориям")
                    .font(.title3).bold()
                    .padding(.leading)
                    .navigationTitle("Поиск")
                UIKitToSwiftUI()
                    .searchable(text: $searching, prompt: self.$placeholder.wrappedValue)
            }
        }
    }
}

struct SearchNavigationUIKit_Previews: PreviewProvider {
    static var previews: some View {
        SearchNavigationUIKit()
    }
}
