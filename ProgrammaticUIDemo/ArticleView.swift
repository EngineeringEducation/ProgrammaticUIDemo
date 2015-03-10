//
//  ArticleView.swift
//  ProgrammaticUIDemo
//
//  Created by Wren on 3/10/15.
//  Copyright (c) 2015 Janardan Yri. All rights reserved.
//

import UIKit

class ArticleView: UIView {

  override init(frame: CGRect) {
    super.init(frame: frame)
    self.backgroundColor = UIColor.redColor()
  }

  required init(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
  }
}

