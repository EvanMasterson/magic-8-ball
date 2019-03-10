//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Masterson, Evan on 10/03/2019.
//  Copyright © 2019 Masterson, Evan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var imageView: UIImageView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    rollMagicBall()
  }
  
  override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
    rollMagicBall()
  }
  
  func rollMagicBall() {
    let randomBallNumber = Int.random(in: 1...5)
    animateBall(newImage: "ball\(randomBallNumber)")
  }
  
  func animateBall(newImage: String) {
    UIView.transition(with: imageView, duration: 0.5, options: .transitionCrossDissolve, animations: {
      self.imageView.image = UIImage(named: newImage)
    }, completion: nil)
  }


}

