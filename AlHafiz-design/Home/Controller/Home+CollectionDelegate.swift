//
//  Home+CollectionDelegate.swift
//  AlHafiz-design
//
//  Created by Sohila on 23/05/2023.
//

import UIKit

extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        4
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section{
        case 0:
            return 10
        case 1:
            return 8
        case 2:
            return 3
        default:
            return 1
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch indexPath.section{
        case 0:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCollectionViewCell", for: indexPath) as! CategoryCollectionViewCell
            cell.setup()
            return cell
        case 1:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "EstateForSaleCollectionViewCell", for: indexPath) as! EstateForSaleCollectionViewCell
            return cell
        default:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "EstateForSaleCollectionViewCell", for: indexPath) as! EstateForSaleCollectionViewCell
            return cell
        }
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        viewForSupplementaryElementOfKind kind: String,
        at indexPath: IndexPath
    ) -> UICollectionReusableView {
        switch kind {
        case UICollectionView.elementKindSectionHeader:
            
            let headerView = collectionView.dequeueReusableSupplementaryView(
                ofKind: kind,
                withReuseIdentifier: "HeaderCollectionReusableView",
                for: indexPath)
            
            guard let typedHeaderView = headerView as? HeaderCollectionReusableView
            else { return headerView }
            
            switch indexPath.section{
            case 0:
                 break
            case 1:
                typedHeaderView.headerName.text = "Real estate for sale"
                typedHeaderView.addSubview(typedHeaderView.headerView)
            case 2:
                typedHeaderView.headerName.text = "Real estate for rent"
                typedHeaderView.addSubview(typedHeaderView.headerView)
            case 3:
                typedHeaderView.headerName.text = "Real estate for daily rent"
                typedHeaderView.addSubview(typedHeaderView.headerView)
            default:
                typedHeaderView.addSubview(typedHeaderView.headerView)
            }
             
            return typedHeaderView
        default:
            assert(false, "Invalid element type")
        }
    }
}
