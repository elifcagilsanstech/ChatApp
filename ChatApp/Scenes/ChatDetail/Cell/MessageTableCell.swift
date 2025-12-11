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
    
    @IBOutlet weak var messageView: UIView!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var trailingConstraint: NSLayoutConstraint!
    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    private func setupUI() {
        messageView.layer.masksToBounds = true
        messageView.layer.cornerRadius = 12
    }
    
    func labelText(_ text: String, isMine: Bool) {
        messageLabel.text = text
        
        if isMine {
            leadingConstraint.constant = self.contentView.bounds.width / 2
            leftView.isHidden = true
            messageView.backgroundColor = .systemBlue
        } else {
            trailingConstraint.constant = self.contentView.bounds.width / 2 
            rightView.isHidden = true
            messageView.backgroundColor = .systemRed
        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
}
