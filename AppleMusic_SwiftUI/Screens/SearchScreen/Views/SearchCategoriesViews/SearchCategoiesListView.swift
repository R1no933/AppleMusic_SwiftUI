//
//  SearchCategoiesListView.swift
//  AppleMusic_SwiftUI
//
//  Created by Dmitriy Baskakov on 17.09.2022.
//

import SwiftUI

struct SearchCategoiesListView: View {
    
    @ObservedObject var modelData = CategoryData()
    
    let columns: [GridItem] = Array(repeating: .init(), count: 2)
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(SearchConstants.SearchCategoriesView.title)
                .font(.title3).bold()
            
            LazyVGrid(columns: columns, alignment: .center) {
                ForEach(modelData.data, id: \.id) { data in
                    NavigationLink(destination: CategoryView(), label: {
                        SearchCategoriesView(image: data.image)
                    })
                }
            }
        }
        .padding(8)
    }
}

struct SearchCategoiesListView_Previews: PreviewProvider {
    static var previews: some View {
        SearchCategoiesListView()
    }
}
