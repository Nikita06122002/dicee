//
//  setupUI.swift
//  Dicee-iOS13
//
//  Created by macbook on 23.10.2023.
//  Copyright © 2023 London App Brewery. All rights reserved.
//

import Foundation
import UIKit

final class setupUI: UIView {
    
    init() {
        super.init(frame: .infinite)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let arrayPhotos = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
    
    private let imageView = UIImageView(image: UIImage(named: "GreenBackground"))
    private let logo = UIImageView(image: UIImage(named: "logo"))
    private let diceOne = UIImageView(image: UIImage(named: "DiceOne"))
    private let diceFive = UIImageView(image: UIImage(named: "DiceFive"))
    private let rollButton = UIButton()
    
    
    private func setupUI() {
        self.addSubViews(imageView)
       
        rollButton.addTarget(self, action: #selector(rollPressed), for: .touchUpInside)
        
        logo.contentMode = .scaleAspectFill
        
        imageView.isUserInteractionEnabled = true
        imageView.addSubViews(logo, diceOne, diceFive, rollButton)
        imageView.contentMode = .scaleAspectFill
        
        rollButton.backgroundColor = UIColor(patternImage: UIImage(named: "red")!)
        rollButton.setTitle("ROLL", for: .normal)
        rollButton.titleLabel?.font = .systemFont(ofSize: 40)
        rollButton.layer.cornerRadius = 20
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: self.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            logo.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 30),
            logo.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            diceOne.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            diceOne.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40),
            diceOne.widthAnchor.constraint(equalToConstant: 120),
            diceOne.heightAnchor.constraint(equalToConstant: 120),
            
            diceFive.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            diceFive.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40),
            diceFive.widthAnchor.constraint(equalToConstant: 120),
            diceFive.heightAnchor.constraint(equalToConstant: 120),
            
            rollButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            rollButton.topAnchor.constraint(greaterThanOrEqualTo: logo.bottomAnchor, constant: 30),
            rollButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -100),
            rollButton.widthAnchor.constraint(equalToConstant: 125),
            rollButton.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    @objc func rollPressed() {
        print("Im pressed")
        diceOne.image = UIImage(named: arrayPhotos.randomElement()!)
        diceFive.image = UIImage(named: arrayPhotos.randomElement()!)
        
    }
    
    
}
