//
//  EstateForSaleCollectionViewCell.swift
//  AlHafiz-design
//
//  Created by Sohila on 23/05/2023.
//

import UIKit

class EstateForSaleCollectionViewCell: UICollectionViewCell {
    
    override func layoutSubviews() {
        super.layoutSubviews()
   
        self.contentView.layer.borderColor = #colorLiteral(red: 0.8705882353, green: 0.8705882353, blue: 0.8705882353, alpha: 1)
        self.contentView.layer.borderWidth = 1
        self.contentView.layer.cornerRadius = 5
        self.contentView.layer.masksToBounds = true
    }
}
