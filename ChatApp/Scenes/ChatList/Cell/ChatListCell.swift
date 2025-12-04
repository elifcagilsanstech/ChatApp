//
//  ChatListCell.swift
//  ChatApp
//
//  Created by Elif Çağıl on 4.12.2025.
//

import UIKit

class ChatListCell: UITableViewCell {
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var messageInfoLabel: UILabel!
    
    @IBOutlet weak var countView: UIView!
    
    @IBOutlet weak var countLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func setupCell(){
        userNameLabel.text = "Elif Çağıl"
        timeLabel.text = "12:34"
        messageInfoLabel.text = "Bu bir deneme mesajıdır.sdfghjklşsdfghjklhgyhjnkmljhubjn"
        countLabel.text = "6"
        
    }
    
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
