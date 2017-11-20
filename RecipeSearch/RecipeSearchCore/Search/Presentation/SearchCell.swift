//
//  SearchCell.swift
//  RecipeSearch
//
//  Created by Fernando Frances on 20/11/2017.
//  Copyright © 2017 Fernando Frances. All rights reserved.
//

import UIKit

class SearchCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var thumbnail: UIImageView!
   
    func refresh(recipe: Recipe){
        self.title.text = recipe.title
    }
    
    class func identifier() -> String {
        return "SearchCellIdentifier"
    }
    
    class func height() -> Float {
        return 100
    }

    override func prepareForReuse() {
        thumbnail = nil
    }
    
}
