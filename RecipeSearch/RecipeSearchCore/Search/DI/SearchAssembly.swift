//
//  SearchAssembly.swift
//  RecipeSearch
//
//  Created by Fernando Frances on 20/11/2017.
//  Copyright © 2017 Fernando Frances. All rights reserved.
//

import Foundation

final class SearchAssembly {
    private let  webServiceAssembly : WebServiceAssembly
    
    init(webServiceAssembly: WebServiceAssembly){
        self.webServiceAssembly = webServiceAssembly
    }
    
    public func viewController() -> SearchViewController {
        return SearchViewController(presenter: presenter())
    }
    
    func presenter() -> SearchPresenter {
        return SearchPresenter(repository: repository())
    }
    
    func repository() -> SearchRepository {
        return SearchRepository(webService: webServiceAssembly.webService)
    }
    
}
