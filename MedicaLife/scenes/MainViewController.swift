//
//  MainViewController.swift
//  MedicaLife
//
//  Created by Norman on 18/02/2020.
//  Copyright © 2020 raphael. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
          self.navigationController?.setNavigationBarHidden(true, animated: animated)
      }
      
      override func viewWillDisappear(_ animated: Bool) {
          self.navigationController?.setNavigationBarHidden(false, animated: animated)
      }
    
    @IBAction func addButton(_ sender: Any) {
        let submit = AddTreatmentViewController()
              self.navigationController?.pushViewController(submit, animated: true)
    }
    
    
    
    @IBAction func userButton(_ sender: Any) {
        let submit = UserViewController()
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
