//
//  SearchCell.swift
//  RecipeSearch
//
//  Created by Fernando Frances on 20/11/2017.
//  Copyright © 2017 Fernando Frances. All rights reserved.
//

import UIKit

class SearchCell: UITableViewCell {

    var recipe: Recipe?
    
    @IBOutlet weak var ingredients: UILabel!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var thumbnail: UIImageView!
   
    func refresh(recipe: Recipe){
        self.recipe = recipe
        self.title.text = recipe.title
        self.ingredients.text = recipe.ingredients
        self.recipe?.thumbnail.loadImage(into:thumbnail)
        
    }
    
    class func identifier() -> String {
        return "SearchCellIdentifier"
    }
    
    class func height() -> Float {
        return 100
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        thumbnail.image = nil
    }
    
}
