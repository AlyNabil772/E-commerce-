//
//  MassagesTableViewCell.swift
//  e-commerce
//
//  Created by ALY NABIL on 09/07/2024.
//

import UIKit

class MassagesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productDescriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        productImage.layer.cornerRadius = productImage.frame.height / 2
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
}
