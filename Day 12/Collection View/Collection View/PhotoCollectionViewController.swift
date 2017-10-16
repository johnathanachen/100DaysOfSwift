//
//  PhotoCollectionViewController.swift
//  Collection View
//
//  Created by Johnathan Chen on 10/8/17.
//  Copyright © 2017 JCSwifty. All rights reserved.
//

import UIKit

private let reuseIdentifier = "photoCell"

class PhotoCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return model.posts.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! PhotoCollectionViewCell
    
        cell.imageView.image = UIImage(named: model.posts[indexPath.row]["image"]!)
    
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "segueToPostView" {
            let postViewController = segue.destination as! PostViewController
            
            let cell = sender as! UICollectionViewCell
            
            postViewController.selectedIndex = collectionView?.indexPath(for: cell)
        }
    }

}














