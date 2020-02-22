//
//  User.swift
//  MedicaLife
//
//  Created by raphael on 07/02/2020.
//  Copyright © 2020 raphael. All rights reserved.
//

import UIKit

class User: CustomStringConvertible {
    var id: Int?
    var userName: String
    var password: String
    
    init(userName: String, password: String) {
        self.userName = userName
        self.password = password
    }
    
    var description: String {
        return "{\(self.id ?? 0) \(self.userName) \(self.password)}"
    }
}
