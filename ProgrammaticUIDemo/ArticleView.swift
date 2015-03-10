//
//  ArticleView.swift
//  ProgrammaticUIDemo
//
//  Created by Wren on 3/10/15.
//  Copyright (c) 2015 Janardan Yri. All rights reserved.
//

import UIKit

class ArticleView: UIView {

  var avatarImageView : UIImageView
  var titleLabel : UILabel
  var bodyTextView : UITextView

  override init(frame: CGRect) {
    // Create subviews
    self.avatarImageView = UIImageView()
    self.titleLabel = UILabel()
    self.bodyTextView = UITextView()

    super.init(frame: frame)

    // Build out the view hierarchy
    self.addSubview(self.avatarImageView)
    self.addSubview(self.titleLabel)
    self.addSubview(self.bodyTextView)

    // Layout
    self.titleLabel.frame = CGRect(x: 100, y: 10, width: 200, height: 44)
    self.bodyTextView.frame = CGRect(x: 10, y: 60, width: 290, height: 300)


    self.avatarImageView.setTranslatesAutoresizingMaskIntoConstraints(false)
    let horizontalAvatarConstraints = NSLayoutConstraint.constraintsWithVisualFormat(
      "H:|-10-[avatarImageView(80)]",
      options: nil,
      metrics: nil,
      views: [ "avatarImageView" : self.avatarImageView ]
    )

    self.addConstraints(horizontalAvatarConstraints)

    self.avatarImageView.addConstraint(NSLayoutConstraint(
      item: self.avatarImageView,
      attribute: NSLayoutAttribute.Width,
      relatedBy: NSLayoutRelation.Equal,
      toItem: self.avatarImageView,
      attribute: NSLayoutAttribute.Height,
      multiplier: 1,
      constant: 0
    ))

    self.avatarImageView.addConstraint(NSLayoutConstraint(
      item: self.avatarImageView,
      attribute: NSLayoutAttribute.Top,
      relatedBy: NSLayoutRelation.Equal,
      toItem: self,
      attribute: NSLayoutAttribute.Top,
      multiplier: 0,
      constant: 10
      ))



    // Subview configuration
    self.avatarImageView.backgroundColor = UIColor.greenColor()
    self.titleLabel.text = "Important Article"
    self.titleLabel.backgroundColor = UIColor.redColor()
    self.bodyTextView.text = "There's lots of really significant text in here that you'll wish you'd read when you click away to that weird trick over there."

    // Enforce significant view layerings
    self.sendSubviewToBack(self.bodyTextView)
  }

  required init(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
  }
}

