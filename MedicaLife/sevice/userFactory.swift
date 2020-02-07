//
//  userFactory.swift
//  MedicaLife
//
//  Created by raphael on 07/02/2020.
//  Copyright © 2020 raphael. All rights reserved.
//

import SwiftUI

class UserFactory {
    
    static func userFrom(dictionary: [String: Any]) -> User? {
        guard let u = dictionary["userName"] as? String,
              let p = dictionary["password"] as? String else {
                return nil
        }
        let user = User(userName: u, password: p)
        user.id = dictionary["id"] as? Int
        return user
    }
    
    static func dictionaryFrom(user: User) -> [String: Any] {
        return [
            "userName": user.userName,
            "password": user.password
        ]
    }
        
}
    
