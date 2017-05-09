//
//  HomeViewController.swift
//  YouTubeApp
//
//  Created by Macbook on 09/05/2017.
//  Copyright © 2017 Chappy-App. All rights reserved.
//

import UIKit

class HomeViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

     override func viewDidLoad() {
          super.viewDidLoad()
          
          navigationItem.title = "Home"
          collectionView?.register(HomeViewControllerCell.self, forCellWithReuseIdentifier: "cell")
          collectionView?.backgroundColor = UIColor.white
          
          
     }
     
     override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
     
          return 5
     }
     
     override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

          let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! HomeViewControllerCell
          
          
          return cell
     
     }
     
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
          
          return CGSize(width: view.frame.width, height: 230)
          
     }
     
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
          
          return 0
     }
     

}

