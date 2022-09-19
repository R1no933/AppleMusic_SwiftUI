//
//  SearchCategoryCell.swift
//  AppleMusic_SwiftUI
//
//  Created by Dmitriy Baskakov on 19.09.2022.
//

import UIKit

class SearchCategoryCell: UICollectionViewCell {
    
    //MARK: - Propertie's
    static let identifire = "SearchCategoryCell"
    var image = SearchCategoryImage(frame: .zero)
    
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
        addSubview(image)
        image.backgroundColor = .systemRed
        
        NSLayoutConstraint.activate([
            image.topAnchor.constraint(equalTo: topAnchor),
            image.leadingAnchor.constraint(equalTo: leadingAnchor),
            image.trailingAnchor.constraint(equalTo: trailingAnchor),
            image.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
    func set(category: CategoryModel) {
        image.image = UIImage.init(named: category.image)
    }
}
