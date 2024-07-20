//
//  ChatListTableViewCell.swift
//  e-commerce
//
//  Created by ALY NABIL on 12/07/2024.
//

import UIKit

class ChatListTableViewCell: UITableViewCell {
    //MARK: - OUTLET
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var massageLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
