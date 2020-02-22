//
//  TraitmentFactory.swift
//  MedicaLife
//
//  Created by raphael on 04/02/2020.
//  Copyright © 2020 raphael. All rights reserved.
//

import UIKit

class TreatmentFactory {
    
    static func treatmentFrom(dictionary: [String: Any]) -> Treatment? {
        guard let n = dictionary["name"] as? String,
              let c = dictionary["comment"] as? String,
              let d = dictionary["doseByDay"] as? Int else {
                return nil
        }
        let treatment = Treatment(name: n, comment: c, doseByDay: d)
        treatment.id = dictionary["id"] as? Int
        return treatment
    }
    
    static func dictionaryFrom(treatment: Treatment) -> [String: Any] {
        return [
            "name": treatment.name,
            "comment": treatment.comment,
            "doseByDay": treatment.doseByDay
        ]
    }
    
}
