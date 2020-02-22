//
//  Traitment.swift
//  MedicaLife
//
//  Created by raphael on 04/02/2020.
//  Copyright © 2020 raphael. All rights reserved.
//

import UIKit

class Treatment: CustomStringConvertible {
    var id: Int?
    var name: String
    var date: String
    var hour: String
    var comment: String
    var doseByDay: Int
    
    init(name: String, date: String, hour: String, comment: String, doseByDay: Int) {
        self.name = name // nom du medicament
        self.hour = hour // heure de la prise
        self.date = date // date du début de traitement
        self.comment = comment // info sur me medicament, memo
        self.doseByDay = doseByDay // nombre de pillule par jour par exemple
    }
    
    var description: String {
        return "{\(self.id ?? 0) \(self.name) \(self.date) \(self.hour) \(self.comment) \(self.doseByDay)}"
    }
}
