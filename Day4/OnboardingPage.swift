//
//  onboardingPage.swift
//  Day4
//
//  Created by Fritz Heider on 1/30/20.
//  Copyright © 2020 Make School. All rights reserved.
//

import UIKit

class OnboardingPage: UIView {
    
    var newImage: UIImageView!
    var button: UIButton!
    var newLabel: UILabel!
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup() {
        //        self.backgroundColor = UIColor.purple
        button = UIButton(frame: .zero)
        button.backgroundColor = .green
        button.setTitle("Subscribe", for: .normal)
        
        
        self.addSubview(button)

    
    newLabel = UILabel(frame: .zero)
    newLabel.translatesAutoresizingMaskIntoConstraints = false
    newLabel.text = "this is my label"
    self.addSubview(newLabel)
    
    newImage = UIImageView(frame: .zero)
    newImage.translatesAutoresizingMaskIntoConstraints = false
    self.addSubview(newImage)
    newImage.image = UIImage(named: "img1")
    
    NSLayoutConstraint.activate([
    newImage.widthAnchor.constraint(equalToConstant: 180),
    newImage.heightAnchor.constraint(equalTo: newImage.widthAnchor, multiplier: 1/1),
    newImage.centerXAnchor.constraint(equalTo: self.centerXAnchor),
    newImage.centerYAnchor.constraint(equalTo:  self.centerYAnchor),
    newLabel.widthAnchor.constraint(equalToConstant: 180),
    newLabel.heightAnchor.constraint(equalToConstant: 180),
    newLabel.centerYAnchor.constraint(equalTo: newImage.centerYAnchor, constant: 100),
    newLabel.centerXAnchor.constraint(equalTo: newImage.centerXAnchor, constant: 50)

    ])
    
    
    
}

}
