//
//  MainViewController.swift
//  MedicaLife
//
//  Created by raphael on 28/01/2020.
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
    
    
    
    @IBAction func buttonAdd(_ sender: UIButton) {
        let homeController = AddTreatlentViewController()
        self.navigationController?.pushViewController(homeController, animated: true)
    }
    
    @IBAction func buttonUser(_ sender: UIButton) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
