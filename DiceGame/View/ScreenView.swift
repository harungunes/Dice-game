//
//  ScreenView.swift
//  DiceGame
//
//  Created by Harun Gunes on 03/12/2020.
//

import UIKit

let screenView: UIImageView = {
  let view = UIImageView()
  view.translatesAutoresizingMaskIntoConstraints = false
  view.image = UIImage(named: "GreenBackground")
  
  return view
}()

func setViewConstraints(for view: UIView) {
  view.addSubview(screenView)
  
  NSLayoutConstraint.activate([
    screenView.topAnchor.constraint(equalTo: view.topAnchor),
    screenView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
    screenView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
    screenView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
  ])
}
