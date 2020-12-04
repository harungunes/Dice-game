//
//  RollButton.swift
//  DiceGame
//
//  Created by Harun Gunes on 04/12/2020.
//

import UIKit

class RollButton {
  
  let rollButton: UIButton = {
    let button = UIButton(type: .system)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle("ROLL", for: .normal)
    button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
    button.backgroundColor = UIColor(displayP3Red: 169/255, green: 61/255, blue: 61/255, alpha: 1)
    button.setTitleColor(.white, for: .normal)
    button.layer.cornerRadius = 50 / 10
    
    return button
  }()
  
  func pressRollButton() {
    rollButton.addTarget(self, action: #selector(handleRoll), for: .touchUpInside)
  }

  @objc func handleRoll(sender: UIButton!) {
    throwDices()
  }

  func setButton() {
    bottomView.addSubview(rollButton)
    pressRollButton()
    
    NSLayoutConstraint.activate([
      rollButton.widthAnchor.constraint(equalToConstant: 200),
      rollButton.heightAnchor.constraint(equalToConstant: 50),
      rollButton.centerXAnchor.constraint(equalTo: bottomView.centerXAnchor),
      rollButton.centerYAnchor.constraint(equalTo: bottomView.centerYAnchor)
    ])
  }
}
