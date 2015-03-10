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
    self.avatarImageView = UIImageView()
    self.titleLabel = UILabel()
    self.bodyTextView = UITextView()

    super.init(frame: frame)

    self.addSubview(self.avatarImageView)
    self.addSubview(self.titleLabel)
    self.addSubview(self.bodyTextView)

  }

  required init(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
  }
}

