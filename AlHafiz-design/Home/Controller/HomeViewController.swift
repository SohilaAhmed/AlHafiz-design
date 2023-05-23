//
//  HomeViewController.swift
//  AlHafiz-design
//
//  Created by Sohila on 23/05/2023.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var searchView: UIView!
    @IBOutlet weak var searchTF: UITextField!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchDesign(view: searchView, textField: searchTF)
        collectionView.collectionViewLayout = createLayout()
    }
     
    private func createLayout() -> UICollectionViewCompositionalLayout {
        UICollectionViewCompositionalLayout {sectionIndex, layoutEnvironment in
            switch sectionIndex{
            case 0:
                let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: .init(widthDimension: .absolute(88), heightDimension: .absolute(125)), subitems: [item])
                let section = NSCollectionLayoutSection(group: group)
                section.orthogonalScrollingBehavior = .continuous
                section.interGroupSpacing = 45
                section.contentInsets = .init(top: 0, leading: 28, bottom: 10, trailing: 26)
                return section
            case 1:
                let item = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .absolute(120), heightDimension: .absolute(116)))
                item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 5, trailing: 5)
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(116)), subitems: [item])
                let section = NSCollectionLayoutSection(group: group)
                section.interGroupSpacing = 20
                section.contentInsets = .init(top: 0, leading: 13, bottom: 10, trailing: 5)
                section.boundarySupplementaryItems = [self.supplementaryHeaderItem()] 
                return section
            default:
                let item = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .absolute(120), heightDimension: .absolute(116)))
                item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 5, trailing: 5)
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(116)), subitems: [item])
                let section = NSCollectionLayoutSection(group: group)
                section.interGroupSpacing = 20
                section.contentInsets = .init(top: 0, leading: 13, bottom: 10, trailing: 5)
                section.boundarySupplementaryItems = [self.supplementaryHeaderItem()]
                return section
            }
        }
    }
    
    private func supplementaryHeaderItem() -> NSCollectionLayoutBoundarySupplementaryItem {
        .init(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .estimated(25)), elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)
    }
    
    func searchDesign(view: UIView, textField: UITextField){
        //border for view
//        let border = CALayer()
//        border.backgroundColor = UIColor.gray.cgColor
//        border.frame = CGRect(x: 0, y: view.frame.size.height - 1, width: view.frame.size.width, height: 0.2)
//        view.layer.addSublayer(border)
        
        //image to textField
        textField.leftViewMode = UITextField.ViewMode.always
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        let image = UIImage(named: "searchLogo")
        imageView.image = image
        searchTF.leftView = imageView
    }
}
