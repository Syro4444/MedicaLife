//
//  UserViewController.swift
//  MedicaLife
//
//  Created by Norman on 18/02/2020.
//  Copyright © 2020 raphael. All rights reserved.
//

import UIKit

class UserViewController: UIViewController {

    @IBAction func disconect(_ sender: Any) {
        let submit = LaunchViewController()
        self.navigationController?.pushViewController(submit, animated: true)
    }
    
    @IBOutlet weak var dateLabel: UILabel!
    
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBAction func datePickerChanger(_ sender: Any) {
        let dateFormatter = DateFormatter()

          dateFormatter.dateStyle = DateFormatter.Style.short

          let strDate = dateFormatter.string(from: datePicker.date)
          dateLabel.text = strDate
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
