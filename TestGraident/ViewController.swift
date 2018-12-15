//
//  ViewController.swift
//  TestGraident
//
//  Created by Shane Whitehead on 16/12/18.
//  Copyright © 2018 Kaizen Enteripises. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    let image = UIImage(named: "Miho_Small.png")
    
    let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 250, height: 250))
    imageView.contentMode = .scaleAspectFit
    imageView.image = image
    imageView.backgroundColor = nil
    
    let backgroundView = UIView(frame: CGRect(x: 0, y: 0, width: 250, height: 250))
    backgroundView.translatesAutoresizingMaskIntoConstraints = false
    
    let gradient = CAGradientLayer()
    gradient.frame = backgroundView.bounds
    let startColor = UIColor(red: 30/255, green: 113/255, blue: 79/255, alpha: 0).cgColor
    let endColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1).cgColor
    gradient.colors = [startColor, endColor]
    backgroundView.layer.insertSublayer(gradient, at: 0)
    
    backgroundView.addSubview(imageView)
    
    view.addSubview(backgroundView)
    
    imageView.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor).isActive = true
    imageView.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor).isActive = true
    imageView.topAnchor.constraint(equalTo: backgroundView.topAnchor).isActive = true
    imageView.bottomAnchor.constraint(equalTo: backgroundView.bottomAnchor).isActive = true
    
    backgroundView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    backgroundView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    
    backgroundView.addConstraint(NSLayoutConstraint(item: backgroundView,
                                                    attribute: .width,
                                                    relatedBy: .equal,
                                                    toItem: nil,
                                                    attribute: .notAnAttribute,
                                                    multiplier: 1.0,
                                                    constant: 250))
    backgroundView.addConstraint(NSLayoutConstraint(item: backgroundView,
                                                    attribute: .width,
                                                    relatedBy: .equal,
                                                    toItem: backgroundView,
                                                    attribute: .height,
                                                    multiplier: 1.0,
                                                    constant: 0))


  }


}

