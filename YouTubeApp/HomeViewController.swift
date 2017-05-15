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
          collectionView?.contentInset = UIEdgeInsetsMake(50, 0, 0, 0)
          collectionView?.scrollIndicatorInsets = UIEdgeInsetsMake(50, 0, 0, 0)
          
          
          customMenuBar()
          customButtons()
          
     }
     
     func customButtons() {
     
          let search = UIImage(named: "search")?.withRenderingMode(.alwaysTemplate)
          let searchButton = UIBarButtonItem(image: search, style: .plain, target: self, action: #selector(handleSearch))
          searchButton.tintColor = UIColor.white
          
          let more = UIImage(named: "more")?.withRenderingMode(.alwaysTemplate)
          
          let moreButton = UIBarButtonItem(image: more, style: .plain, target: self, action: #selector(handleMore))
          moreButton.tintColor = UIColor.white
          
          navigationItem.rightBarButtonItems = [moreButton, searchButton]
          
     
     }
     
     func handleSearch() {
          
          print(123)
     }
     
     func handleMore() {
          
          print(4321)
     }
     
     let menuBar = MenuBar()
     
     func customMenuBar() {
          
          view.addSubview(menuBar)
          menuBar.translatesAutoresizingMaskIntoConstraints = false
          menuBar.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
          menuBar.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
          menuBar.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
          menuBar.heightAnchor.constraint(equalToConstant: 50).isActive = true
          
          
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

