//
//  String+Image.swift
//  RecipeSearch
//
//  Created by Fernando Frances on 20/11/2017.
//  Copyright © 2017 Fernando Frances. All rights reserved.
//

import UIKit

extension String {
    func loadImage(into imageView:UIImageView) {
        let queue = OperationQueue()
        queue.addOperation {
            if  let url = URL(string: self),
                let data = NSData(contentsOf:url),
                let image = UIImage(data: data as Data){
                
                    OperationQueue.main.addOperation {
                        imageView.image = image
                    }
            }
        }
    }
}
