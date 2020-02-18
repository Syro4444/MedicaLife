//
//  AddTreatlentViewController.swift
//  MedicaLife
//
//  Created by Norman on 18/02/2020.
//  Copyright © 2020 raphael. All rights reserved.
//

import UIKit




class AddTreatlentViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource

{

    let colors = ["1","2","3","4"]

    @IBOutlet weak var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        pickerView.delegate = self
        pickerView.dataSource = self
        
    }
   
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
           return 1
       }
       
       func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
           return colors.count
       }
       
       func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
           return colors[row]
       }




}
