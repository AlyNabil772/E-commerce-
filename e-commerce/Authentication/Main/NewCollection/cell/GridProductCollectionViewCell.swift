//
//  GridProductCollectionViewCell.swift
//  e-commerce
//
//  Created by ALY NABIL on 07/04/2024.
//

import UIKit

class GridProductCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var productImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        productImage.layer.cornerRadius = 8
    }
}
