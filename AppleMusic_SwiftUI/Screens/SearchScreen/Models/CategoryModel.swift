//
//  CategoryModel.swift
//  AppleMusic_SwiftUI
//
//  Created by Dmitriy Baskakov on 17.09.2022.
//

import Foundation

//MARK: - Model struct
struct CategoryModel: Identifiable {
    let id = UUID()
    let image: String
}

//MARK: - Data class
class CategoryData: ObservableObject {
    @Published var data = CategoryModel.data
}

//MARK: - Extensions for model
extension CategoryModel {
    static var data = [
        CategoryModel(image: SearchConstants.CategoryModel.firstImage),
        CategoryModel(image: SearchConstants.CategoryModel.secontImage),
        CategoryModel(image: SearchConstants.CategoryModel.thirdImage),
        CategoryModel(image: SearchConstants.CategoryModel.fourthImage),
        CategoryModel(image: SearchConstants.CategoryModel.fifthImage),
        CategoryModel(image: SearchConstants.CategoryModel.sixthImage),
        CategoryModel(image: SearchConstants.CategoryModel.seventhImage),
        CategoryModel(image: SearchConstants.CategoryModel.eighthImage),
        CategoryModel(image: SearchConstants.CategoryModel.ninthImage),
        CategoryModel(image: SearchConstants.CategoryModel.tenthImage),
        CategoryModel(image: SearchConstants.CategoryModel.eleventhImage),
        CategoryModel(image: SearchConstants.CategoryModel.twelfthImage),
        CategoryModel(image: SearchConstants.CategoryModel.thirteenthImage),
        CategoryModel(image: SearchConstants.CategoryModel.fourteenthImage),
        CategoryModel(image: SearchConstants.CategoryModel.fifteenthImage),
        CategoryModel(image: SearchConstants.CategoryModel.sixteenthImage),
    ]
}
