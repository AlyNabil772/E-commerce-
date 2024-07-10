//
//  ProductsCollectionViewCell.swift
//  e-commerce
//
//  Created by ALY NABIL on 31/03/2024.
//

import UIKit

class ListProductsCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var productImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        productImage.layer.cornerRadius = 8 
    }
}
