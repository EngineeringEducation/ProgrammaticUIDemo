//
//  ArticleView.swift
//  ProgrammaticUIDemo
//
//  Created by Wren on 3/10/15.
//  Copyright (c) 2015 Janardan Yri. All rights reserved.
//

import UIKit
import Snap

class ArticleView: UIView {

  var avatarImageView : UIImageView
  var titleLabel : UILabel
  var bodyTextView : UITextView

  override init(frame: CGRect) {
    // Create subviews
    self.avatarImageView = UIImageView(image: UIImage(named: "purtykurty"))
    self.avatarImageView.clipsToBounds = true
    self.avatarImageView.contentMode = UIViewContentMode.ScaleAspectFill

    self.titleLabel = UILabel()
    self.bodyTextView = UITextView()

    super.init(frame: frame)

    // Initialization

    self.backgroundColor = UIColor.whiteColor()

    // Build out the view hierarchy
    self.addSubview(self.avatarImageView)
    self.addSubview(self.titleLabel)
    self.addSubview(self.bodyTextView)

    // Old-timey layout for self.avatarImageView (equivalent to Snap usage below)

//    self.avatarImageView.setTranslatesAutoresizingMaskIntoConstraints(false)
//    let horizontalAvatarConstraints = NSLayoutConstraint.constraintsWithVisualFormat(
//      "H:|-10-[avatarImageView(80)]",
//      options: nil,
//      metrics: nil,
//      views: [ "avatarImageView" : self.avatarImageView ]
//    )
//
//    self.addConstraints(horizontalAvatarConstraints)
//
//    self.avatarImageView.addConstraint(NSLayoutConstraint(
//      item: self.avatarImageView,
//      attribute: NSLayoutAttribute.Width,
//      relatedBy: NSLayoutRelation.Equal,
//      toItem: self.avatarImageView,
//      attribute: NSLayoutAttribute.Height,
//      multiplier: 1,
//      constant: 0
//    ))
//
//    self.avatarImageView.addConstraint(NSLayoutConstraint(
//      item: self.avatarImageView,
//      attribute: NSLayoutAttribute.Top,
//      relatedBy: NSLayoutRelation.Equal,
//      toItem: self,
//      attribute: NSLayoutAttribute.Top,
//      multiplier: 0,
//      constant: 10
//    ))

    // Autolayout

    self.avatarImageView.snp_makeConstraints { (make) -> () in
      make.width.equalTo(self.avatarImageView.snp_height)
      make.top.equalTo(10)
      make.leading.equalTo(10)
      make.height.equalTo(80)
    }

    self.titleLabel.setContentCompressionResistancePriority(1000, forAxis: UILayoutConstraintAxis.Vertical)
    self.titleLabel.setContentHuggingPriority(1000, forAxis: UILayoutConstraintAxis.Vertical)
    self.titleLabel.snp_makeConstraints { (make) -> () in
      make.leading.equalTo(self.avatarImageView.snp_trailing).with.offset(10)
      make.trailing.equalTo(-10)
      make.top.equalTo(10)
    }

    self.bodyTextView.setContentCompressionResistancePriority(1000, forAxis: UILayoutConstraintAxis.Vertical)
    self.bodyTextView.setContentHuggingPriority(1000, forAxis: UILayoutConstraintAxis.Vertical)
    self.bodyTextView.snp_makeConstraints { (make) -> () in
      make.leading.equalTo(10)
      make.top.equalTo(self.titleLabel.snp_bottom).with.offset(10)
      make.trailing.equalTo(-10)
      make.bottom.equalTo(-10)
    }

    // Subview configuration
    self.titleLabel.text = "Important Article"
    self.bodyTextView.text = "There's lots of really significant text in here that you'll wish you'd read when you click away to that weird trick over there. Look at how elegantly it wraps around the avatar. You're super impressed and also you should give me a raise."

    // Enforce significant view layerings
    self.sendSubviewToBack(self.bodyTextView)

    // Exclusion paths for bodyTextView layout

    let avatarExclusionPath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: 90, height: 50))
    self.bodyTextView.textContainer.exclusionPaths = [ avatarExclusionPath ]

  }

  required init(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
  }
}

