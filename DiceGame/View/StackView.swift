//
//  StackView.swift
//  DiceGame
//
//  Created by Harun Gunes on 04/12/2020.
//

import UIKit

let topView: UIView = {
  let topView = UIView()
  topView.translatesAutoresizingMaskIntoConstraints = false
  
  return topView
}()

let middleView: UIView = {
  let middleView = UIView()
  middleView.translatesAutoresizingMaskIntoConstraints = false
  
  return middleView
}()

let bottomView: UIView = {
  let bottomView = UIView()
  bottomView.translatesAutoresizingMaskIntoConstraints = false
  
  return bottomView
}()

func setStackView() {
  let stackView = UIStackView(arrangedSubviews: [topView, middleView, bottomView])
  stackView.translatesAutoresizingMaskIntoConstraints = false
  stackView.distribution = .fillEqually
  stackView.axis = .vertical
  screenView.addSubview(stackView)
  
  NSLayoutConstraint.activate([
    stackView.topAnchor.constraint(equalTo: screenView.topAnchor),
    stackView.bottomAnchor.constraint(equalTo: screenView.bottomAnchor),
    stackView.leadingAnchor.constraint(equalTo: screenView.leadingAnchor),
    stackView.trailingAnchor.constraint(equalTo: screenView.trailingAnchor)
  ])
}
