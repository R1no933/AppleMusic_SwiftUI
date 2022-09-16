//
//  InterestingModel.swift
//  AppleMusic_SwiftUI
//
//  Created by Dmitriy Baskakov on 15.09.2022.
//

import Foundation

//MARK: - Model struct
struct InterestingModel: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let description: String
    let image: String
}

//MARK: - Data
class InterestingData: ObservableObject {
    @Published var data = InterestingModel.data
}

//MARK: - Extensions for struct
extension InterestingModel {
    static let data = [
        InterestingModel(
            title: RadioConstants.InterestingModel.firstTitle,
            subtitle: RadioConstants.InterestingModel.firstSubTitle,
            description: RadioConstants.InterestingModel.firstDescription,
            image: RadioConstants.InterestingModel.firstImage),
        InterestingModel(
            title: RadioConstants.InterestingModel.secondTitle,
            subtitle: RadioConstants.InterestingModel.secondSubTitle,
            description: RadioConstants.InterestingModel.secondDescription,
            image: RadioConstants.InterestingModel.secondImage),
        InterestingModel(
            title: RadioConstants.InterestingModel.thirdTitle,
            subtitle: RadioConstants.InterestingModel.thirdSubTitle,
            description: RadioConstants.InterestingModel.thirdDescription,
            image: RadioConstants.InterestingModel.thirdImage),
        InterestingModel(
            title: RadioConstants.InterestingModel.fourthTitle,
            subtitle: RadioConstants.InterestingModel.fourthSubTitle,
            description: RadioConstants.InterestingModel.fourthDescription,
            image: RadioConstants.InterestingModel.fourthImage),
        InterestingModel(
            title: RadioConstants.InterestingModel.fifthTitle,
            subtitle: RadioConstants.InterestingModel.fifthSubTitle,
            description: RadioConstants.InterestingModel.fifthDescription,
            image: RadioConstants.InterestingModel.fifthImage),
        InterestingModel(
            title: RadioConstants.InterestingModel.sixthTitle,
            subtitle: RadioConstants.InterestingModel.sixthSubTitle,
            description: RadioConstants.InterestingModel.sixthDescription,
            image: RadioConstants.InterestingModel.sixthImage),
    ]
}


