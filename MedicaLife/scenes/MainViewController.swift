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
       
        let center = UNUserNotificationCenter.current()
        
        center.requestAuthorization(options: [.alert, .sound]) { (granted, error) in
        }
        
        // Step 2: Create the notification content
        let content = UNMutableNotificationContent()
        content.title = "Il est temps de prendre votre traitement"
        content.body = "Xanax"
        
        // Step 3: Create the notification trigger
        let date = Date().addingTimeInterval(10)
        
        let dateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second], from: date)
        
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
        
        // Step 4: Create the request
        
        let uuidString = UUID().uuidString
        
        let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
        
        // Step 5: Register the request
        center.add(request) { (error) in
            // Check the error parameter and handle any errors
        }
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
