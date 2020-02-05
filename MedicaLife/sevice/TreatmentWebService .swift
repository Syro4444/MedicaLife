//
//  TraitmentWebService .swift
//  MedicaLife
//
//  Created by raphael on 04/02/2020.
//  Copyright © 2020 raphael. All rights reserved.
//

import Foundation

class TreatmentWebService {

    func getTreatment(completion: @escaping ([Treatment]) -> Void) -> Void {
        guard let treatmentURL = URL(string: "https://moc-3a-movies.herokuapp.com/") else {
            return;
        }
        let task = URLSession.shared.dataTask(with: treatmentURL, completionHandler: { (data: Data?, res, err) in
            guard let bytes = data,
                  err == nil,
                  let json = try? JSONSerialization.jsonObject(with: bytes, options: .allowFragments) as? [Any] else {
                    DispatchQueue.main.sync {
                        completion([])
                    }
                return
            }
            let treatment = json.compactMap { (obj) -> Treatment? in
                guard let dict = obj as? [String: Any] else {
                    return nil
                }
                return TreatmentFactory.treatmentFrom(dictionary: dict)
            }
            DispatchQueue.main.sync {
                completion(treatment)
            }
        })
        task.resume()
    }
}
