//
//  Dices.swift
//  DiceGame
//
//  Created by Harun Gunes on 04/12/2020.
//

import UIKit

let leftDice: UIImageView = {
  let leftDice = UIImageView()
  leftDice.translatesAutoresizingMaskIntoConstraints = false
  leftDice.image = UIImage(named: "DiceTwo")
  
  return leftDice
}()

let rightDice: UIImageView = {
  let rightDice = UIImageView()
  rightDice.translatesAutoresizingMaskIntoConstraints = false
  rightDice.image = UIImage(named: "DiceThree")
  
  return rightDice
}()

func setDices() {
  let stackView = UIStackView(arrangedSubviews: [leftDice, rightDice])
  stackView.translatesAutoresizingMaskIntoConstraints = false
  stackView.distribution = .equalSpacing
  stackView.axis = .horizontal
  middleView.addSubview(stackView)
  
  NSLayoutConstraint.activate([
    stackView.centerYAnchor.constraint(equalTo: middleView.centerYAnchor),
    stackView.centerXAnchor.constraint(equalTo: middleView.centerXAnchor),
    stackView.widthAnchor.constraint(equalTo: middleView.widthAnchor, multiplier: 0.7)
  ])
}
