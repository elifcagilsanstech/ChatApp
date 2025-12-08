//
//  ChatListModel.swift
//  ChatApp
//
//  Created by Elif Çağıl on 4.12.2025.
//

import Foundation

struct ChatModel : Codable {
    
    let chatId : Int
    let lastMessage : String
    let lastMessafeTime : TimeInterval
    let otherUserId : Int
    
}
