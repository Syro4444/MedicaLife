//
//  AddTreatmentViewController.swift
//  MedicaLife
//
//  Created by Norman on 18/02/2020.
//  Copyright © 2020 raphael. All rights reserved.
//

import UIKit




class AddTreatmentViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource

{
    let traitmentWebService: TreatmentWebService = TreatmentWebService()
    var keyboardVisible = false

    let colors = ["1","2","3","4"]

    @IBOutlet weak var medicsTextField: UITextField!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var hourPicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.medicsTextField.delegate = self
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

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if self.keyboardVisible == true {
            self.view.endEditing(true) // close all user interaction
            self.keyboardVisible = false
        }
    }

}


extension AddTreatmentViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.keyboardVisible = true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        if textField == self.medicsTextField {
            return self.pickerView.becomeFirstResponder() // ouverture du clavier
        }
        if textField == self.pickerView {
            return self.datePicker.becomeFirstResponder() // ouverture du clavier
        }
        if textField == self.datePicker {
            return self.hourPicker.becomeFirstResponder() // ouverture du clavier
        }
        self.keyboardVisible = false
        return false
    }
}
