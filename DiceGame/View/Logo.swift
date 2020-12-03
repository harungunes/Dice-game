//
//  Logo.swift
//  DiceGame
//
//  Created by Harun Gunes on 04/12/2020.
//

import UIKit

let logo: UIImageView = {
  let logo = UIImageView()
  logo.translatesAutoresizingMaskIntoConstraints = false
  logo.image = UIImage(named: "DiceeLogo")
  
  return logo
}()

func setLogo() {
  topView.addSubview(logo)
  
  NSLayoutConstraint.activate([
    logo.centerYAnchor.constraint(equalTo: topView.centerYAnchor),
    logo.centerXAnchor.constraint(equalTo: topView.centerXAnchor),
  ])
}
