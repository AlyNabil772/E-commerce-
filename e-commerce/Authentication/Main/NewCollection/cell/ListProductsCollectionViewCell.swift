//
//  ProductsCollectionViewCell.swift
//  e-commerce
//
//  Created by ALY NABIL on 31/03/2024.
//

import UIKit

class ListProductsCollectionViewCell: UICollectionViewCell {

    //MARK: - OUTLETS
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var brandNameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        productImage.layer.cornerRadius = 8 
    }
}
