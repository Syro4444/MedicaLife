//
//  NextViewController.swift
//  MedicaLife
//
//  Created by raphael on 01/02/2020.
//  Copyright © 2020 raphael. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    @IBOutlet weak var home: UITabBarItem!
    
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        home.image = UIImage(named: "home-icon")
    }

}
