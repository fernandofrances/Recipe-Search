//
//  WebService.swift
//  RecipeSearch
//
//  Created by Fernando Frances on 20/11/2017.
//  Copyright © 2017 Fernando Frances. All rights reserved.
//

import Foundation

final class WebService {
    private let session = URLSession(configuration: .default)
    private let baseURL = URL(string:"http://www.recipepuppy.com/api/?")!
    private let decoder = JSONDecoder()
    

    func load(from endpoint: Endpoint, onSuccess: @escaping (SearchResult) -> Void) {
        let decoder = self.decoder
        let request = endpoint.request(with: baseURL)
        
        let task = session.dataTask(with: request.url!) { (data: Data?, response: URLResponse?, error: Error?) in
            OperationQueue.main.addOperation {
                if error == nil {
                    if let result = try? decoder.decode(SearchResult.self, from: data!){ onSuccess(result)}
                }else{
                    print("Error")
                }
            }
        }
        task.resume()
    }
}
