//
//  SearchRepository.swift
//  RecipeSearch
//
//  Created by Fernando Frances on 20/11/2017.
//  Copyright © 2017 Fernando Frances. All rights reserved.
//

import Foundation

final class SearchRepository {
    private let webService: WebService
    init(webService: WebService){
        self.webService = webService
    }
    
    func searchResults(withQuery query: String, onResults: @escaping ([Recipe]) -> Void) {
        return webService.load(from: .searchResults(query: query), onSuccess: { (result: SearchResult) in
            onResults(result.results)
        })
    }
}
