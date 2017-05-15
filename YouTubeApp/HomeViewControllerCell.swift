//
//  HomeViewControllerCell.swift
//  YouTubeApp
//
//  Created by Macbook on 09/05/2017.
//  Copyright © 2017 Chappy-App. All rights reserved.
//

import UIKit

class HomeViewControllerCell: UICollectionViewCell {

     override init(frame: CGRect) {
          super.init(frame: frame)
          
          
          
          setupViews()
     }
     
     var video: Video? {
          
          didSet {
               
          }
     }

     
     let thumbnailImageview = UIImageView()
     let profileImageView = UIImageView()
     let titleTextView = UITextView()
     let subTitleTextView = UITextView()
     let separatorView = UIView()
     
     
     func setupViews() {
     
          addSubview(thumbnailImageview)
          thumbnailImageview.translatesAutoresizingMaskIntoConstraints = false
          thumbnailImageview.image = UIImage(named: "Mike")
          thumbnailImageview.clipsToBounds = true
          thumbnailImageview.contentMode = .scaleAspectFill
          thumbnailImageview.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16).isActive = true
          thumbnailImageview.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16).isActive = true
          thumbnailImageview.topAnchor.constraint(equalTo: self.topAnchor, constant: 16)
               .isActive = true
          thumbnailImageview.heightAnchor.constraint(equalToConstant: 150).isActive = true
     
          
          addSubview(profileImageView)
          profileImageView.translatesAutoresizingMaskIntoConstraints = false
          profileImageView.image = UIImage(named: "Mike")
          profileImageView.layer.masksToBounds = true
          profileImageView.layer.cornerRadius = 22
          profileImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16).isActive = true
          profileImageView.topAnchor.constraint(equalTo: thumbnailImageview.bottomAnchor, constant: 8)
               .isActive = true
          profileImageView.widthAnchor.constraint(equalToConstant: 44).isActive = true
          profileImageView.heightAnchor.constraint(equalToConstant: 44).isActive = true
          
          
          addSubview(titleTextView)
          titleTextView.translatesAutoresizingMaskIntoConstraints = false
          titleTextView.text = "Michael Chapman - iPhone 7 Launch Promo"
          titleTextView.leftAnchor.constraint(equalTo: profileImageView.rightAnchor, constant: 8).isActive = true
          titleTextView.topAnchor.constraint(equalTo: thumbnailImageview.bottomAnchor, constant: 8)
               .isActive = true
          titleTextView.rightAnchor.constraint(equalTo: thumbnailImageview.rightAnchor).isActive = true
          titleTextView.heightAnchor.constraint(equalToConstant: 24).isActive = true
          
          
          addSubview(subTitleTextView)
          subTitleTextView.translatesAutoresizingMaskIntoConstraints = false
          subTitleTextView.text = "700,00,00 - 5 years ago"
          subTitleTextView.textColor = UIColor.lightGray
          subTitleTextView.leftAnchor.constraint(equalTo: profileImageView.rightAnchor, constant: 8).isActive = true
          subTitleTextView.topAnchor.constraint(equalTo: titleTextView.bottomAnchor).isActive = true
          subTitleTextView.rightAnchor.constraint(equalTo: thumbnailImageview.rightAnchor).isActive = true
          subTitleTextView.heightAnchor.constraint(equalToConstant: 24).isActive = true

          
          addSubview(separatorView)
          separatorView.translatesAutoresizingMaskIntoConstraints = false
          separatorView.backgroundColor = UIColor.lightGray
          separatorView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
          separatorView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
          separatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
          separatorView.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 8).isActive = true
          
//
//          addSubview(separatorView)
//          subTitleTextView.translatesAutoresizingMaskIntoConstraints = false
//          subTitleTextView.backgroundColor = UIColor.orange
//          subTitleTextView.leftAnchor.constraint(equalTo: profileImageView.rightAnchor, constant: 8).isActive = true
//          subTitleTextView.topAnchor.constraint(equalTo: titleTextView.bottomAnchor, constant: 8)
//               .isActive = true
//          subTitleTextView.rightAnchor.constraint(equalTo: thumbnailImageview.rightAnchor).isActive = true
//          subTitleTextView.heightAnchor.constraint(equalToConstant: 18).isActive = true
     
     }
     
     required init?(coder aDecoder: NSCoder) {
          fatalError("init(coder:) has not been implemented")
     }
     
}
