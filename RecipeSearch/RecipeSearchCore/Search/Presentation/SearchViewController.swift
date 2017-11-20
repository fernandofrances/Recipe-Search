//
//  SearchViewController.swift
//  RecipeSearch
//
//  Created by Fernando Frances on 20/11/2017.
//  Copyright © 2017 Fernando Frances. All rights reserved.
//

import UIKit

class SearchViewController: UITableViewController, UISearchBarDelegate {

    private let searchBar = UISearchBar()
    private var recipesSearched:[Recipe] = []
    private let presenter: SearchPresenter
    
    //MARK: - initialization
    
    init(presenter: SearchPresenter){
        self.presenter = presenter
        
        super.init(nibName: nil, bundle: Bundle(for: type(of: self)))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - LyfeCycle
    
    override func viewDidLoad() {
        presenter.searchView = self
        presenter.didLoad()
        navigationItem.titleView = searchBar
        searchBar.delegate = self
        tableView.register(UINib(nibName: "SearchCell", bundle: nil), forCellReuseIdentifier: SearchCell.identifier())
    }
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipesSearched.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(SearchCell.height())
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: SearchCell = tableView.dequeueReusableCell(withIdentifier: SearchCell.identifier(), for: indexPath) as! SearchCell
        let recipe = recipesSearched[indexPath.row]
        cell.refresh(recipe: recipe)
        return cell
    }
    
    //MARK: - SearchBar delegate
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if(searchText.count >= 2){
             presenter.search(query: searchBar.text!)
        }
    }
 

}

extension SearchViewController: SearchView {
    func update(with recipes: [Recipe]) {
        recipesSearched = recipes
        tableView.reloadData()
    }
    
    
}
