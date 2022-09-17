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
                .frame(width: 200, height: 170)
                .scaledToFit()
                .cornerRadius(10)
        }
    }
}

