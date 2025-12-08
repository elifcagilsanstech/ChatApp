//
//  UserModel.swift
//  ChatApp
//
//  Created by Elif Çağıl on 7.12.2025.
//

import Foundation

struct UserModel : Codable {
    
    let id : String
    let name : String
    let email : String
    let avatar : String
    let lastSeen : String
    let isOnline : Bool

}
