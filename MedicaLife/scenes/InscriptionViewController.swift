//
//  InscriptionViewController.swift
//  MedicaLife
//
//  Created by Lyudmyla Lutsyk on 20/01/2020.
//  Copyright © 2020 raphael. All rights reserved.
//

import UIKit

class InscriptionViewController: UIViewController {

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
   
    @IBAction func submitButton(_ sender: Any) {
        let submit = ConnectionViewController()
        self.navigationController?.pushViewController(submit, animated: true)
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
