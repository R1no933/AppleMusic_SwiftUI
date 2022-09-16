//
//  ListModel.swift
//  AppleMusic_SwiftUI
//
//  Created by Dmitriy Baskakov on 14.09.2022.
//

import Foundation

struct ListModel: Hashable {
    let icon: String
    let listItem: String
}

extension ListModel {
    static var data = [
        ListModel(icon: SFSymbols.playlists, listItem: MediaLibraryConstants.ListModel.playlists),
        ListModel(icon: SFSymbols.artists, listItem: MediaLibraryConstants.ListModel.artists),
        ListModel(icon: SFSymbols.albums, listItem: MediaLibraryConstants.ListModel.albums),
        ListModel(icon: SFSymbols.tvAndFilms, listItem: MediaLibraryConstants.ListModel.tvAndFilms),
        ListModel(icon: SFSymbols.clips, listItem: MediaLibraryConstants.ListModel.clips),
        ListModel(icon: SFSymbols.genres, listItem: MediaLibraryConstants.ListModel.genres),
        ListModel(icon: SFSymbols.collections, listItem: MediaLibraryConstants.ListModel.collections),
        ListModel(icon: SFSymbols.authors, listItem: MediaLibraryConstants.ListModel.authors),
        ListModel(icon: SFSymbols.download, listItem: MediaLibraryConstants.ListModel.download),
        ListModel(icon: SFSymbols.homeCollection, listItem: MediaLibraryConstants.ListModel.homeCollection)
    ]
}
