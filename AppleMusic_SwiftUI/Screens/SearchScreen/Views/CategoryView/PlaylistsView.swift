//
//  PlaylistsView.swift
//  AppleMusic_SwiftUI
//
//  Created by Dmitriy Baskakov on 17.09.2022.
//

import SwiftUI

struct PlaylistsView: View {
    
    @ObservedObject var data = PlaylistData()
    
    var playlistRow = [GridItem(.flexible())]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: playlistRow, spacing: SearchScreenMetrics.PlaylistView.girdSpacing) {
                ForEach(data.data, id: \.id) { data in
                    VStack(alignment: .leading) {
                        Divider()
                        
                        Text(data.title)
                            .foregroundColor(.gray)
                            .font(.system(size: SearchScreenMetrics.PlaylistView.titleFontSize))
                        Text(data.subtitle)
                            .font(.system(size: SearchScreenMetrics.PlaylistView.subtitleFontSize))
                        Text(data.genre)
                            .foregroundColor(.gray)
                            .font(.system(size: SearchScreenMetrics.PlaylistView.subtitleFontSize))
                            .lineLimit(1)
                        Image(data.image)
                            .resizable()
                            .frame(width: SearchScreenMetrics.PlaylistView.imageWidth, height: SearchScreenMetrics.PlaylistView.imageHeight)
                            .cornerRadius(SearchScreenMetrics.PlaylistView.cornerRadius)
                    }
                }
            }
            .padding(SearchScreenMetrics.PlaylistView.padding)
        }
    }
}

struct PlaylistsView_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistsView()
    }
}
