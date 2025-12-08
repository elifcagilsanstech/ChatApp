//
//  MessageTableCell.swift
//  ChatApp
//
//  Created by Elif Çağıl on 8.12.2025.
//

import UIKit

class MessageTableCell: UITableViewCell {
    
    
    @IBOutlet weak var leftView: UIStackView!
    
    @IBOutlet weak var leftTimeLabel: UILabel!
    
    @IBOutlet weak var leftimageView: UIImageView!
    
    @IBOutlet weak var rightView: UIStackView!
    
    @IBOutlet weak var rightimageView: UIImageView!
    
    @IBOutlet weak var rightTimeLabel: UILabel!
    
    @IBOutlet weak var messageLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }
    func labelText(_ text: String) {
        messageLabel.text = text
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
