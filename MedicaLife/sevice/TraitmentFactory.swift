//
//  TraitmentFactory.swift
//  MedicaLife
//
//  Created by raphael on 04/02/2020.
//  Copyright © 2020 raphael. All rights reserved.
//

import Foundation

class TraitmentFactory {
    
    static func traitmentFrom(dictionary: [String: Any]) -> Traitment? {
        guard let n = dictionary["name"] as? String,
              let c = dictionary["comment"] as? String,
              let d = dictionary["doseByDay"] as? Int else {
                return nil
        }
        let traitment = Traitment(name: n, comment: c, doseByDay: d)
        traitment.id = dictionary["id"] as? Int
        return traitment
    }
    
    static func dictionaryFrom(traitment: Traitment) -> [String: Any] {
        return [
            "name": traitment.name,
            "model": traitment.comment,
            "price": traitment.doseByDay
        ]
    }
    
}
