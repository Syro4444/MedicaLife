//
//  LaunchViewController.swift
//  MedicaLife
//
//  Created by Norman on 21/02/2020.
//  Copyright © 2020 raphael. All rights reserved.
//

import UIKit

class LaunchViewController: UIViewController {
    let treatmentWebService: TreatmentWebService = TreatmentWebService()
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }

  
        
    @IBAction func connectionButton(_ sender: Any) {
        let inscription = ConnectionViewController()
        self.navigationController?.pushViewController(inscription, animated: true)
    }
    
    
    @IBAction func inscriptionButton(_ sender: Any) {
        let inscription = InscriptionViewController()
        self.navigationController?.pushViewController(inscription, animated: true)
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
