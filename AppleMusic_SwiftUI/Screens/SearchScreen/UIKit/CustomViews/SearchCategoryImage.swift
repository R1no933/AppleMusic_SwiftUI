//
//  SearchCategoryImage.swift
//  AppleMusic_SwiftUI
//
//  Created by Dmitriy Baskakov on 19.09.2022.
//

import UIKit

class SearchCategoryImage: UIImageView {
    
    //MARK: - Init's
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Methods
    private func configure() {
        layer.cornerRadius = SearchScreenMetrics.SearchCategoriesView.cornerRadius
        clipsToBounds = true
        translatesAutoresizingMaskIntoConstraints = false
    }
}
