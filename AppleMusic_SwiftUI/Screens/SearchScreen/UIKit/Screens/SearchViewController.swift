//
//  SearchViewController.swift
//  AppleMusic_SwiftUI
//
//  Created by Dmitriy Baskakov on 19.09.2022.
//

import UIKit
import SwiftUI

class SearchViewController: UIViewController {
    //MARK: - Enum section's
    enum Section { case main }
    
    //MARK: - Properties
    var categories = CategoryModel.data
    
    private var collectionDataSource: UICollectionViewDiffableDataSource<Section, CategoryModel>?
    var collectionView: UICollectionView!
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
        configureCollectionView()
        configureDataSource()
        updateData()
    }
    
    //MARK: - Methos's
    //Configure VC
    private func configureViewController() {
        title = "Поиск"
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    //Configure collection
    private func configureCollectionView() {
        
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: CollectionFlowLayout.createLayout(in: view))
        collectionView.backgroundColor = .systemBackground
        collectionView.delegate = self
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(SearchCategoryCell.self, forCellWithReuseIdentifier: SearchCategoryCell.identifire)
        
        view.addSubview(collectionView)
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.topAnchor),
            collectionView.widthAnchor.constraint(equalTo: view.widthAnchor),
            collectionView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ])
    }
}

//MARK: - Extensions
//Collection delegate
extension SearchViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        navigationController?.pushViewController(HostView(), animated: true)
    }
}

//Data source and update data
extension SearchViewController {
    func configureDataSource() {
        collectionDataSource = UICollectionViewDiffableDataSource<Section, CategoryModel>(collectionView: collectionView) { collectionView, indexPath, categories in
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SearchCategoryCell.identifire, for: indexPath) as! SearchCategoryCell
            cell.set(category: categories)
            
            return cell
        }
    }
    
    func updateData() {
        var snapshot = NSDiffableDataSourceSnapshot<Section, CategoryModel>()
        snapshot.appendSections([.main])
        snapshot.appendItems(CategoryModel.data, toSection: nil)
        
        DispatchQueue.main.async {
            self.collectionDataSource?.apply(snapshot, animatingDifferences: true)
            
        }
    }
}

