//
//  PlaylistModel.swift
//  AppleMusic_SwiftUI
//
//  Created by Dmitriy Baskakov on 17.09.2022.
//

import Foundation

//MARK: - Model struct
struct PlaylistModel: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let genre: String
    let image: String
}

//MARK: - Data class
class PlaylistData: ObservableObject {
    @Published var data = PlaylistModel.data
}

//MARK: - Extensions for model
extension PlaylistModel {
    static var data = [
        PlaylistModel(
            title: SearchConstants.PlaylistModel.firstTitle,
            subtitle: SearchConstants.PlaylistModel.firstSubtitle,
            genre: SearchConstants.PlaylistModel.firstGenre,
            image: SearchConstants.PlaylistModel.firstImage),
        PlaylistModel(
            title: SearchConstants.PlaylistModel.secondTitle,
            subtitle: SearchConstants.PlaylistModel.secondSubtitle,
            genre: SearchConstants.PlaylistModel.secondGenre,
            image: SearchConstants.PlaylistModel.secondImage),
        PlaylistModel(
            title: SearchConstants.PlaylistModel.thirdTitle,
            subtitle: SearchConstants.PlaylistModel.thirdSubtitle,
            genre: SearchConstants.PlaylistModel.thirdGenre,
            image: SearchConstants.PlaylistModel.thirdImage),
        PlaylistModel(
            title: SearchConstants.PlaylistModel.fourthTitle,
            subtitle: SearchConstants.PlaylistModel.fourthSubtitle,
            genre: SearchConstants.PlaylistModel.fourthGenre,
            image: SearchConstants.PlaylistModel.fourthImage),
        PlaylistModel(
            title: SearchConstants.PlaylistModel.fifthTitle,
            subtitle: SearchConstants.PlaylistModel.fifthSubtitle,
            genre: SearchConstants.PlaylistModel.fifthGenre,
            image: SearchConstants.PlaylistModel.fifthImage),
        PlaylistModel(
            title: SearchConstants.PlaylistModel.sixthTitle,
            subtitle: SearchConstants.PlaylistModel.sixthSubtitle,
            genre: SearchConstants.PlaylistModel.sixthGenre,
            image: SearchConstants.PlaylistModel.sixthImage),
    ]
}
