//
//  IndexViewController.swift
//  MedicaLife
//
//  Created by raphael on 28/01/2020.
//  Copyright © 2020 raphael. All rights reserved.
//

import UIKit

class IndexViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    @IBAction func butonDisconect(_ sender: Any) {
        let homeController = HomeViewController()
        self.navigationController?.pushViewController(homeController, animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
