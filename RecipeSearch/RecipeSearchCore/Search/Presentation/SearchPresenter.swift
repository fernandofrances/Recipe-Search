//
//  SearchPresenter.swift
//  RecipeSearch
//
//  Created by Fernando Frances on 20/11/2017.
//  Copyright © 2017 Fernando Frances. All rights reserved.
//

import UIKit

protocol SearchView: class {
    func update(with recipes: [Recipe])
}

final class SearchPresenter {
    private let repository: SearchRepository
    weak var searchView: SearchView?
    
    init(repository: SearchRepository) {
        self.repository = repository
    }
    
    func didLoad() {
        
    }
    
}

extension SearchPresenter {
   func search(query: String){
        repository.searchResults(withQuery: query) { (recipes: [Recipe]) in
            self.searchView?.update(with: recipes)
        }
    }
}
