//
//  ViewController.swift
//  WP Reader CollectionView demo
//
//  Created by Gabriel Maldonado Almendra on 17/8/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var postCollectionView: UICollectionView!
    
    let dataSource = DataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        postCollectionView.dataSource = dataSource
    }


}

