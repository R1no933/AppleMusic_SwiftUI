//
//  TracksModel.swift
//  AppleMusic_SwiftUI
//
//  Created by Dmitriy Baskakov on 17.09.2022.
//

import Foundation

//MARK: - Model struct
struct TracksModel: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    let genre: String
}

//MARK: - Data class
class TracksData: ObservableObject {
    @Published var data = TracksModel.data
}

//MARK: - Extensions for model
extension TracksModel {
    static var data = [
        TracksModel(
            image: SearchConstants.TracksModel.firstImage,
            title: SearchConstants.TracksModel.firstTitle,
            genre: SearchConstants.TracksModel.firstGenre),
        TracksModel(
            image: SearchConstants.TracksModel.secondImage,
            title: SearchConstants.TracksModel.secondTitle,
            genre: SearchConstants.TracksModel.secondGenre),
        TracksModel(
            image: SearchConstants.TracksModel.thirdImage,
            title: SearchConstants.TracksModel.thirdTitle,
            genre: SearchConstants.TracksModel.thirdGenre),
        TracksModel(
            image: SearchConstants.TracksModel.fourthImage,
            title: SearchConstants.TracksModel.fourthTitle,
            genre: SearchConstants.TracksModel.fourthGenre),
        TracksModel(
            image: SearchConstants.TracksModel.fifthImage,
            title: SearchConstants.TracksModel.fifthTitle,
            genre: SearchConstants.TracksModel.fifthGenre),
        TracksModel(
            image: SearchConstants.TracksModel.sixthImage,
            title: SearchConstants.TracksModel.sixthTitle,
            genre: SearchConstants.TracksModel.sixthGenre),
    ]
}
