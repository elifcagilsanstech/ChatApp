//
//  MessageTableCell.swift
//  ChatApp
//
//  Created by Elif Çağıl on 8.12.2025.
//

import UIKit

class MessageTableCell: UITableViewCell {
    
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
