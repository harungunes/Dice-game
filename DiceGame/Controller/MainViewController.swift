//
//  MainViewController.swift
//  DiceGame
//
//  Created by Harun Gunes on 03/12/2020.
//

import UIKit

class MainViewController: UIViewController {
  
  let rollButton = RollButton()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.backgroundColor = .blue
    setViewConstraints(for: view)
    setStackView()
    setLogo()
    setDices()
    rollButton.setButton()
  }
  
  
}
