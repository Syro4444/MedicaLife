//
//  listTreatmentTableViewCell.swift
//  MedicaLife
//
//  Created by raphael on 22/02/2020.
//  Copyright © 2020 raphael. All rights reserved.
//

import UIKit

class listTreatmentTableViewCell: UITableViewCell {

    @IBOutlet weak var TreatmentLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        func touchStep(_ sender: UIStepper) {
            print("\(sender.value)")
        }
    }
}
