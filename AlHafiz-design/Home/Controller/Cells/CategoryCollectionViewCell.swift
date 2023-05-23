//
//  CategoryCollectionViewCell.swift
//  AlHafiz-design
//
//  Created by Sohila on 23/05/2023.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imgLogo: UIImageView!
    @IBOutlet weak var Label: UILabel!
    
    func setup() {
        imgLogo.image = UIImage(named: "estateLogo")
        imgLogo.layoutIfNeeded()
        imgLogo.layer.cornerRadius = imgLogo.frame.height / 2
    }
  
}
