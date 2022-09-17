//
//  CategoryView.swift
//  AppleMusic_SwiftUI
//
//  Created by Dmitriy Baskakov on 17.09.2022.
//

import SwiftUI

struct CategoryView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .leading) {
                PlaylistsView()
                Spacer()
                TracksView()
                Spacer()
                StationsView()
            }
        }
        
        .navigationTitle(Text("90-e"))
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}
