//
//  SearchCategoriesView.swift
//  AppleMusic_SwiftUI
//
//  Created by Dmitriy Baskakov on 17.09.2022.
//

import SwiftUI

struct SearchCategoriesView: View {
    
    var image: String
    
    var body: some View {
        ZStack(alignment: .leading) {
            Image(self.image)
                .resizable()
                .frame(width: SearchScreenMetrics.SearchCategoriesView.imageWidth, height: SearchScreenMetrics.SearchCategoriesView.imageHeight)
                .scaledToFit()
                .cornerRadius(SearchScreenMetrics.SearchCategoriesView.cornerRadius)
        }
    }
}

