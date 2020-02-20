//
//  ConnectionViewController.swift
//  MedicaLife
//
//  Created by raphael on 06/02/2020.
//  Copyright © 2020 raphael. All rights reserved.
//

import UIKit

class ConnectionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }

    @IBAction func backButton(_ sender: Any) {
        let back = LaunchViewController()
        self.navigationController?.pushViewController(back, animated: true)
    }
    
    @IBAction func ConnectButton(_ sender: Any) {
        let submit = MainViewController()
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
