//
//  HomeViewController.swift
//  MedicaLife
//
//  Created by raphael on 16/01/2020.
//  Copyright © 2020 raphael. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    let traitmentWebService: TraitmentWebService = TraitmentWebService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }


    
    @IBAction func Inscription(_ sender: Any) {
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
