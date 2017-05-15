//
//  HomeViewController.swift
//  YouTubeApp
//
//  Created by Macbook on 09/05/2017.
//  Copyright © 2017 Chappy-App. All rights reserved.
//

import UIKit

class HomeViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

          var videos: [Video]? = {
          
               
               let channel = Channel()
               channel.name = "ChainsmokersVEVO"
               channel.profileImageName = "Mike.png"
               
               let paris = Video()
               paris.channel = channel
               paris.thumbnailImageName = "thumbnail.png"
               paris.views = "100,000,000"
               paris.date = "2 months ago"
               paris.title = "The Chainsmokers - Paris"
               
               
               let closer = Video()
               closer.channel = channel
               closer.thumbnailImageName = "Mike.png"
               closer.views = "500,000,000"
               closer.date = "1 months ago"
               closer.title = "The Chainsmokers - Closer"
               
               let settingFires = Video()
               settingFires.channel = channel
               settingFires.thumbnailImageName = "thumbnail1.png"
               settingFires.views = "300,000,000"
               settingFires.date = "2 weeks ago"
               settingFires.title = "The Chainsmokers - Setting Fires"
               
               
               let allWeKnow = Video()
               allWeKnow.channel = channel
               allWeKnow.thumbnailImageName = "thumbnail2.png"
               allWeKnow.views = "400,000,000"
               allWeKnow.date = "6 months ago"
               allWeKnow.title = "The Chainsmokers - All We Know"
               
               
               let hello = Video()
               hello.channel = channel
               hello.thumbnailImageName = "thumbnail3.png"
               hello.views = "700,000,000"
               hello.date = "7 months ago"
               hello.title = "The Chainsmokers - Hello"
               
               
               let imagine = Video()
               imagine.channel = channel
               imagine.thumbnailImageName = "thumbnail4.png"
               imagine.views = "100,000,000"
               imagine.date = "2 month ago"
               imagine.title = "The Chainsmokers - Imagine"
               
               
               let bobDylan = Video()
               bobDylan.channel = channel
               bobDylan.thumbnailImageName = "thumbnail5.png"
               bobDylan.views = "230,000,000"
               bobDylan.date = "10 months ago"
               bobDylan.title = "The Chainsmokers - Bob Dylan"

               return [paris, closer, settingFires, allWeKnow, hello, imagine, bobDylan]
     }()
     
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
     
          return videos!.count
     }
     
     override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

          let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! HomeViewControllerCell
          
          cell.video = videos?[indexPath.item]
          
          return cell
     
     }
     
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
          
          return CGSize(width: view.frame.width, height: 250)
          
     }
     
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
          
          return 0
     }
  
}

