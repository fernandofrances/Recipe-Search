//
//  CoreAssembly.swift
//  RecipeSearch
//
//  Created by Fernando Frances on 20/11/2017.
//  Copyright © 2017 Fernando Frances. All rights reserved.
//

import UIKit
final class CoreAssembly {
    private let navigationController: UINavigationController
    
    private (set) lazy var searchAssembly = SearchAssembly(webServiceAssembly: webServiceAssembly)
    private(set) lazy var webServiceAssembly = WebServiceAssembly()
    
    public init(navigationController: UINavigationController){
        self.navigationController = navigationController
    }
}
