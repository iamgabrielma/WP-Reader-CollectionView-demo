//
//  DataSource.swift
//  WP Reader CollectionView demo
//
//  Created by Gabriel Maldonado Almendra on 17/8/21.
//

import Foundation
import UIKit

class DataSource: NSObject, UICollectionViewDataSource {
    
    //Strong reference to my initial data
    let post = Post()
    
    // Optional: Creates the wanted number of sections, if not used will return 1 section by default.
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return post.sections.count
    }
    // Number of items in each section
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let category = post.sections[section] // We use the category as a key
        let posts = self.post.data[category]?.count ?? 0 // We use self. here to distinguish between this and the strong reference to the data declared on the top level
        return posts
    }
    // Cell for item at:
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // 1 - We create the cell
        guard let postCell = collectionView.dequeueReusableCell(withReuseIdentifier: PostCell.reuseIdentifier, for: indexPath) as? PostCell else {
            fatalError("Cell cannot be created")
        }
        // 2 - We feed it data:
        let category = post.sections[indexPath.section]
        let post = self.post.data[category]?[indexPath.item] ?? UIImage(imageLiteralResourceName: "image-1")
        // 3 - Now let's display on screen:
        postCell.postImage.image = post
        postCell.postLabel.text = "Test String"

        return postCell
    }
    
}
