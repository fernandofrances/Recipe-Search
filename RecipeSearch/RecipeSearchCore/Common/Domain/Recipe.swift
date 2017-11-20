//
//  Recipe.swift
//  RecipeSearch
//
//  Created by Fernando Frances on 20/11/2017.
//  Copyright © 2017 Fernando Frances. All rights reserved.
//

import Foundation

struct Recipe: Decodable {
    let title: String
    let ingredients: String
    var thumbnail: String = ""
}
