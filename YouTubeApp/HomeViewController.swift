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
          
          let headingLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width - 32, height: view.frame.height))
          headingLabel.text = "Youtube"
          headingLabel.textColor = UIColor.white
          headingLabel.font = UIFont.systemFont(ofSize: 20)
          navigationItem.titleView = headingLabel
          collectionView?.register(HomeViewControllerCell.self, forCellWithReuseIdentifier: "cell")
          collectionView?.backgroundColor = UIColor.white
          navigationController?.navigationBar.isTranslucent = false
          
     }
     
     override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
     
          return 5
     }
     
     override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

          let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! HomeViewControllerCell
          
          return cell
     
     }
     
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
          
          return CGSize(width: view.frame.width, height: 250)
          
     }
     
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
          
          return 0
     }
  
}

