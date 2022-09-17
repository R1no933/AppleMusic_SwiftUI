//
//  StationModel.swift
//  AppleMusic_SwiftUI
//
//  Created by Dmitriy Baskakov on 17.09.2022.
//

import Foundation

//MARK: - Model struct
struct StationModel: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    let genre: String
}

//MARK: - Data class
class StationData: ObservableObject {
    @Published var data = StationModel.data
}

//MARK: - Extensions for model
extension StationModel {
    static var data = [
        StationModel(
            image: SearchConstants.StationModel.firstImage,
            title: SearchConstants.StationModel.firstTitle,
            genre: SearchConstants.StationModel.firstGenre),
        StationModel(
            image: SearchConstants.StationModel.secondImage,
            title: SearchConstants.StationModel.secondTitle,
            genre: SearchConstants.StationModel.secondGenre),
        StationModel(
            image: SearchConstants.StationModel.thirdImage,
            title: SearchConstants.StationModel.thirdTitle,
            genre: SearchConstants.StationModel.thirdGenre),
        StationModel(
            image: SearchConstants.StationModel.fourthImage,
            title: SearchConstants.StationModel.fourthTitle,
            genre: SearchConstants.StationModel.fourthGenre),
        StationModel(
            image: SearchConstants.StationModel.fifthImage,
            title: SearchConstants.StationModel.fifthTitle,
            genre: SearchConstants.StationModel.fifthGenre),
        StationModel(
            image: SearchConstants.StationModel.sixthImage,
            title: SearchConstants.StationModel.sixthTitle,
            genre: SearchConstants.StationModel.sixthGenre),
    ]
}
