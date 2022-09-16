//
//  RadioModel.swift
//  AppleMusic_SwiftUI
//
//  Created by Dmitriy Baskakov on 15.09.2022.
//

import Foundation

//MARK: - Model struct
struct RadioModel: Identifiable {
    let id = UUID()
    let title: String
    let subTitle: String
    let image: String
}

//MARK: - Data
class RadioData: ObservableObject {
    @Published var data = RadioModel.data
}

//MARK: - Extensions for struct
extension RadioModel {
    static let data = [
        RadioModel(title: RadioConstants.RadioModel.firstTitle,
                   subTitle: RadioConstants.RadioModel.firstSubtitle,
                   image: RadioConstants.RadioModel.firstImage),
        
        RadioModel(title: RadioConstants.RadioModel.secondTitle,
                   subTitle: RadioConstants.RadioModel.secondSubtitle,
                   image: RadioConstants.RadioModel.secondImage),
        
        RadioModel(title: RadioConstants.RadioModel.thirdTitle,
                   subTitle: RadioConstants.RadioModel.thirdSubtitle,
                   image: RadioConstants.RadioModel.thirdImage),
        
        RadioModel(title: RadioConstants.RadioModel.fourthTitle,
                   subTitle: RadioConstants.RadioModel.fourthSubtitle,
                   image: RadioConstants.RadioModel.fourthImage),
        
        RadioModel(title: RadioConstants.RadioModel.fifthTitle,
                   subTitle: RadioConstants.RadioModel.fifthSubtitle,
                   image: RadioConstants.RadioModel.fifthImage),
        
        RadioModel(title: RadioConstants.RadioModel.sixthTitle,
                   subTitle: RadioConstants.RadioModel.sixthSubtitle,
                   image: RadioConstants.RadioModel.sixthImage),
        
        RadioModel(title: RadioConstants.RadioModel.seventhTitle,
                   subTitle: RadioConstants.RadioModel.seventhSubtitle,
                   image: RadioConstants.RadioModel.seventhImage),
        
        RadioModel(title: RadioConstants.RadioModel.eighthTitle,
                   subTitle: RadioConstants.RadioModel.eighthSubtitle,
                   image: RadioConstants.RadioModel.eighthImage),
        
        RadioModel(title: RadioConstants.RadioModel.ninthTitle,
                   subTitle: RadioConstants.RadioModel.ninthSubtitle,
                   image: RadioConstants.RadioModel.ninthImage),
        
        RadioModel(title: RadioConstants.RadioModel.tenthTitle,
                   subTitle: RadioConstants.RadioModel.tenthSubtitle,
                   image: RadioConstants.RadioModel.tenthImage)
    ]
}
