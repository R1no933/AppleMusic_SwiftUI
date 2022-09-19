//
//  CollectionFlowLayout.swift
//  AppleMusic_SwiftUI
//
//  Created by Dmitriy Baskakov on 19.09.2022.
//

import UIKit

struct CollectionFlowLayout {
    
    static func createLayout(in view: UIView) -> UICollectionViewFlowLayout {
        
        let flowLayout = UICollectionViewFlowLayout()
        let size = CGSize(width: (view.bounds.width - 30) / 2, height: 150)
        
        flowLayout.minimumLineSpacing = 8
        flowLayout.minimumInteritemSpacing = 9
        flowLayout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        flowLayout.itemSize = size
        
        
        return flowLayout
        
    }
}
