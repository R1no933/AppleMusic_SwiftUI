//
//  SearchNavigation.swift
//  AppleMusic_SwiftUI
//
//  Created by Dmitriy Baskakov on 17.09.2022.
//

import SwiftUI

struct SearchNavigation: View {
    
    @State private var searching = ""
    @State private var placeHolder = "Ваша медиатека"
    
    var columns = [GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView() {
                VStack(alignment: .leading) {
                    
                    Divider()
                    
                    LazyVGrid(columns: columns, alignment: .leading) {
                        SearchCategoiesListView()
                    }
                }
                Spacer(minLength: 70)
            }
            .navigationBarTitle(Text("Поиск"))
            .padding(.horizontal, 0)
        }
        
        .searchable(text: $searching, prompt: self.$placeHolder.wrappedValue)
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchNavigation()
    }
}
