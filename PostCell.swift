//
//  PostCell.swift
//  WP Reader CollectionView demo
//
//  Created by Gabriel Maldonado Almendra on 17/8/21.
//

import Foundation
import UIKit

class PostCell: UICollectionViewCell {
    
    static let reuseIdentifier = String(describing: PostCell.self)
    
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var postLabel: UILabel!
}
