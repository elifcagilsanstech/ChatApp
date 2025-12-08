//
//  ChatDetailModel.swift
//  ChatApp
//
//  Created by Elif Çağıl on 4.12.2025.
//

import Foundation

struct MessageModel : Codable {
    
    let messageId : String
    let text : String
    let senderId : Int
    let isRead : Bool
    let time : TimeInterval
    
}
