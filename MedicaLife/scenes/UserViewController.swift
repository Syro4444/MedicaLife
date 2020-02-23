//
//  UserViewController.swift
//  MedicaLife
//
//  Created by Norman on 18/02/2020.
//  Copyright © 2020 raphael. All rights reserved.
//

import UIKit

class UserViewController: UIViewController {
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    var keyboardVisible = false

    @IBAction func disconect(_ sender: Any) {
        let submit = LaunchViewController()
        self.navigationController?.pushViewController(submit, animated: true)
    }
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    @IBOutlet weak var sexSegmented: UISegmentedControl!
    @IBOutlet weak var poidsTextField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBAction func datePickerChanger(_ sender: Any) {
        let dateFormatter = DateFormatter()

          dateFormatter.dateStyle = DateFormatter.Style.short

          let strDate = dateFormatter.string(from: datePicker.date)
          dateLabel.text = strDate
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    @IBAction func SubmitButton(_ sender: Any) {
        let submit = MainViewController()
        self.navigationController?.pushViewController(submit, animated: true)
    }
    
    @IBAction func disconnectButton(_ sender: Any) {
        let submit = LaunchViewController()
            self.navigationController?.pushViewController(submit, animated: true)
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

extension UserViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.keyboardVisible = true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        if textField == self.nameTextField {
            return self.surnameTextField.becomeFirstResponder() // ouverture du clavier
        }
        if textField == self.surnameTextField {
            return self.datePicker.becomeFirstResponder() // ouverture du clavier
        }
        if textField == self.datePicker {
            return self.sexSegmented.becomeFirstResponder() // ouverture du clavier
        }
        if textField == self.sexSegmented {
            return self.poidsTextField.becomeFirstResponder() // ouverture du clavier
        }
        self.keyboardVisible = false
        return false
    }
}
