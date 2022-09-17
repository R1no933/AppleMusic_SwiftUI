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
            LazyHGrid(rows: playlistRow, spacing: 10) {
                ForEach(data.data, id: \.id) { data in
                    VStack(alignment: .leading) {
                        Divider()
                        
                        Text(data.title)
                            .foregroundColor(.gray)
                            .font(.system(size: 12))
                        Text(data.subtitle)
                            .font(.system(size: 16))
                        Text(data.genre)
                            .foregroundColor(.gray)
                            .font(.system(size: 16))
                            .lineLimit(1)
                        Image(data.image)
                            .resizable()
                            .frame(width: 350, height: 250)
                            .cornerRadius(10)
                    }
                }
            }
            .padding(10)
        }
    }
}

struct PlaylistsView_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistsView()
    }
}
