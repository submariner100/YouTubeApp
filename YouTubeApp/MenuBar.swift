//
//  MenuBar.swift
//  YouTubeApp
//
//  Created by Macbook on 09/05/2017.
//  Copyright © 2017 Chappy-App. All rights reserved.
//

import UIKit

class MenuBar: UIView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
     
     override init(frame: CGRect) {
          super.init(frame: frame)
          
         collectionView.backgroundColor = UIColor(red: 230/255, green: 31/255, blue: 32/255, alpha: 1)
         collectionView.delegate = self
         collectionView.dataSource = self
         addSubview(collectionView)
         collectionView.translatesAutoresizingMaskIntoConstraints = false
         collectionView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
         collectionView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
         collectionView.heightAnchor.constraint(equalTo: self.heightAnchor).isActive = true
         collectionView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
         collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
     }
     
     let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
     
     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
          
          return 4
          
     }
     
     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
          
          let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
          
          cell.backgroundColor = UIColor.blue
          return cell
          
     }
     
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
          
          return CGSize(width: frame.width / 4, height: frame.height)
          
     }
     
     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
          
          return 0
     }
     
     
     required init?(coder aDecoder: NSCoder) {
          fatalError("init(coder:) has not been implemented")
          
     }
     
     
     
     
}
