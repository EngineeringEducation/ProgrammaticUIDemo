//
//  ArticleViewController.swift
//  ProgrammaticUIDemo
//
//  Created by Wren on 3/10/15.
//  Copyright (c) 2015 Janardan Yri. All rights reserved.
//

import UIKit

class ArticleViewController: UIViewController {

  override func loadView() {
    self.view = ArticleView(frame: CGRectZero)
  }

}
