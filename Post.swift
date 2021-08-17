//
//  Post.swift
//  WP Reader CollectionView demo
//
//  Created by Gabriel Maldonado Almendra on 17/8/21.
//

import Foundation
import UIKit

class Post {
    
    enum Category: String, CaseIterable {
        case cook = "Cooking"
        case code = "Coding"
        case travel = "Traveling"
    }
    
    let sections = Category.allCases
    
    var data: [Category: [UIImage]] = [
    
        .cook: [UIImage(imageLiteralResourceName: "image-1")],
        .code: [UIImage(imageLiteralResourceName: "image-2")],
        .travel: [UIImage(imageLiteralResourceName: "image-3")]
    ]
    
    init(){}
}
