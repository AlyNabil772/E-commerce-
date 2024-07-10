//
//  subCategoriesCollectionViewCell.swift
//  e-commerce
//
//  Created by ALY NABIL on 25/03/2024.
//

import UIKit

class SubCategoriesCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var categoryNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
      
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        cardView.layer.cornerRadius = 8 
    }
}
