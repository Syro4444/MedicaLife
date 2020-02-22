//
//  TreatmentListViewController.swift
//  MedicaLife
//
//  Created by raphael on 22/02/2020.
//  Copyright © 2020 raphael. All rights reserved.
//

import UIKit

class TreatmentListViewController: UIViewController {
    
    enum Identifier: String {
     case treatments
    }

    let treatmentWebService: TreatmentWebService = TreatmentWebService() // appel de l'api
    
    @IBOutlet weak var tableView: UITableView!
    var treatments: [Treatment]!
    

    // Declarer la view cell dans la liste
    override func viewDidLoad() {
        super.viewDidLoad()
        let cellNib = UINib(nibName: "TreatmentTableViewCell", bundle: nil)
        self.tableView.register(cellNib, forCellReuseIdentifier: Identifier.treatments.rawValue)
        self.tableView.dataSource = self as? UITableViewDataSource // écouteur des data de la liste
        self.tableView.delegate = self as? UITableViewDelegate // écouteur des évènements utilisateur
    }
    
    @objc func touchEdit() {
        UIView.animate(withDuration: 0.33) {
            self.tableView.isEditing = !self.tableView.isEditing
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.treatments.count
    }
    
   
    //suppression du traitement
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        let treatment = self.treatments[indexPath.row] // prend une ligne
        self.treatmentWebService.removeTreatment(treatment: treatment) { (success) in
            if success {
                self.treatments.remove(at: indexPath.row)// la supprime si il trouve
                DispatchQueue.main.sync {
                    self.tableView.deleteRows(at: [indexPath], with: .automatic)
                }
            }
        }
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let res = self.treatments[sourceIndexPath.row]
        self.treatments.remove(at: sourceIndexPath.row)
        self.treatments.insert(res, at: destinationIndexPath.row)
    }
}
