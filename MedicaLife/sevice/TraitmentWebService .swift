//
//  TraitmentWebService .swift
//  MedicaLife
//
//  Created by raphael on 04/02/2020.
//  Copyright © 2020 raphael. All rights reserved.
//

import Foundation

class TraitmentWebService {

    func getTraitments(completion: @escaping ([Traitment]) -> Void) -> Void {
        guard let traitmentURL = URL(string: "https://moc-3a-movies.herokuapp.com/") else {
            return;
        }
        let task = URLSession.shared.dataTask(with: traitmentURL, completionHandler: { (data: Data?, res, err) in
            guard let bytes = data,
                  err == nil,
                  let json = try? JSONSerialization.jsonObject(with: bytes, options: .allowFragments) as? [Any] else {
                    DispatchQueue.main.sync {
                        completion([])
                    }
                return
            }
            let traitment = json.compactMap { (obj) -> Traitment? in
                guard let dict = obj as? [String: Any] else {
                    return nil
                }
                return TraitmentFactory.traitmentFrom(dictionary: dict)
            }
            DispatchQueue.main.sync {
                completion(traitment)
            }
        })
        task.resume()
    }
}
