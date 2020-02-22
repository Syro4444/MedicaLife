//
//  UserWebService.swift
//  MedicaLife
//
//  Created by raphael on 07/02/2020.
//  Copyright © 2020 raphael. All rights reserved.
//

import UIKit

class UserWebService {

    func getUser(completion: @escaping ([User]) -> Void) -> Void {
        guard let userURL = URL(string: "") else {
            return;
        }
        let task = URLSession.shared.dataTask(with: userURL, completionHandler: { (data: Data?, res, err) in
            guard let bytes = data,
                  err == nil,
                  let json = try? JSONSerialization.jsonObject(with: bytes, options: .allowFragments) as? [Any] else {
                    DispatchQueue.main.sync {
                        completion([])
                    }
                return
            }
            let user = json.compactMap { (obj) -> User? in
                guard let dict = obj as? [String: Any] else {
                    return nil
                }
                return UserFactory.userFrom(dictionary: dict)
            }
            DispatchQueue.main.sync {
                completion(user)
            }
        })
        task.resume()
    }
}
