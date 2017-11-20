//
//  Endpoint.swift
//  RecipeSearch
//
//  Created by Fernando Frances on 20/11/2017.
//  Copyright © 2017 Fernando Frances. All rights reserved.
//

import Foundation

internal enum Endpoint{
    case searchResults(query:String)
}

internal extension Endpoint {
    func request(with baseURL: URL) -> URLRequest {
        var components = URLComponents(url: baseURL, resolvingAgainstBaseURL: false)!
        components.queryItems = parameters.map(URLQueryItem.init)
        var request = URLRequest(url: components.url!)
        request.httpMethod = "GET"
        return request
    }
}

private extension Endpoint {
    
    var parameters: [String:String] {
        switch self {
        case .searchResults(let query):
            return ["q": query]
        }
    }
}
