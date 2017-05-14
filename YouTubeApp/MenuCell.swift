//
//  MenuCell.swift
//  YouTubeApp
//
//  Created by Macbook on 09/05/2017.
//  Copyright © 2017 Chappy-App. All rights reserved.
//

import UIKit



class MenuCell: UICollectionViewCell {

     let thumbImage = UIImageView()
     
     override init(frame: CGRect) {
          super.init(frame: frame)
          
          backgroundColor = UIColor(red: 230/255, green: 31/255, blue: 32/255, alpha: 1)
          
          
          addSubview(thumbImage)
          thumbImage.translatesAutoresizingMaskIntoConstraints = false
          thumbImage.widthAnchor.constraint(equalToConstant: 28).isActive = true
          thumbImage.heightAnchor.constraint(equalToConstant: 28).isActive = true
          thumbImage.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
          thumbImage.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
          
          
     }
     
     
     
     required init?(coder aDecoder: NSCoder) {
          fatalError("init(coder:) has not been implemented")
          
          
     }
     
     
}
