//
//  TraitmentWebService .swift
//  MedicaLife
//
//  Created by raphael on 04/02/2020.
//  Copyright © 2020 raphael. All rights reserved.
//

import UIKit

class TreatmentWebService {

    func getTreatment(completion: @escaping ([Treatment]) -> Void) -> Void {
        guard let treatmentURL = URL(string: "") else {
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
    
    func removeTreatment(treatment: Treatment, completion: @escaping (Bool) -> Void) -> Void {
        guard
            let treatmentId = treatment.id,
            let treatmentURL = URL(string: "https:///\(treatmentId)") else {
            return
        }
        var request = URLRequest(url: treatmentURL)
        request.httpMethod = "DELETE"
        let task = URLSession.shared.dataTask(with: request, completionHandler: { (data, res, err) in
            if let httpRes = res as? HTTPURLResponse {
                completion(httpRes.statusCode == 204)
                return
            }
            completion(false)
        })
        task.resume()
    }
    
    func addTreatment(treatment: Treatment, completion: @escaping (Bool) -> Void) -> Void {
        guard let treatmentURL = URL(string: "") else {
            return
        }
        var request = URLRequest(url: treatmentURL)
        request.httpMethod = "POST"
        request.httpBody = try? JSONSerialization.data(withJSONObject: TreatmentFactory.dictionaryFrom(treatment: treatment), options: .fragmentsAllowed)
        request.setValue("application/json", forHTTPHeaderField: "content-type")
        let task = URLSession.shared.dataTask(with: request, completionHandler: { (data, res, err) in
            if let httpRes = res as? HTTPURLResponse {
                completion(httpRes.statusCode == 201)
                return
            }
            completion(false)
        })
        task.resume()
    }
}
