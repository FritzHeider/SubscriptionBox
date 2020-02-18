
//
//  HomePage.swift
//  Day4
//
//  Created by Fritz Heider on 2/6/20.
//  Copyright © 2020 Make School. All rights reserved.
//

import UIKit

class HomePage: UIView {
    
//    var 
//    var newImage: UIImageView!
    var button: UIButton!
    var newLabel: UILabel!
    
    var button1: UIButton!
    var button2: UIButton!
    var button3: UIButton!
    
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
        button1 = UIButton(frame: .zero)
        button1.translatesAutoresizingMaskIntoConstraints = false
        button1.backgroundColor = UIColor(displayP3Red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
        button1.setTitle("Continue", for: .normal)
        self.addSubview(button1)
        
        button2 = UIButton(frame: .zero)
        button2.translatesAutoresizingMaskIntoConstraints = false
        button2.backgroundColor = UIColor(displayP3Red: 0.0, green: 0.0, blue: 1.0, alpha: 1.0)
        button2.setTitle("2222222222", for: .normal)
        self.addSubview(button2)
        
        button3 = UIButton(frame: .zero)
        button3.translatesAutoresizingMaskIntoConstraints = false
        button3.backgroundColor = UIColor(displayP3Red: 0.0, green: 1.0, blue: 0.0, alpha: 1.0)
        button3.setTitle("Button3", for: .normal)
        self.addSubview(button3)
        
        
        

        NSLayoutConstraint.activate([
            button1.widthAnchor.constraint(equalToConstant: 180),
            button1.heightAnchor.constraint(equalTo: button1.widthAnchor, multiplier: 1/1),
            button1.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            button1.trailingAnchor.constraint(equalTo:  self.trailingAnchor),
            //            newLabel.widthAnchor.constraint(equalToConstant: 180),
            button2.heightAnchor.constraint(equalToConstant: 60),
            button2.centerYAnchor.constraint(equalTo: button1.centerYAnchor, constant: 100),
            button2.centerXAnchor.constraint(equalTo: button1.centerXAnchor, constant: 0),
            button3.widthAnchor.constraint(equalToConstant: 100),
            button3.heightAnchor.constraint(equalToConstant: 60),
            button3.centerYAnchor.constraint(equalTo: button1.centerYAnchor, constant: 200),
            button3.centerXAnchor.constraint(equalTo: button1.centerXAnchor, constant: 0),


        ])
        
        
        
    }
}

/*
 // Only override draw() if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 override func draw(_ rect: CGRect) {
 // Drawing code
 }
 */


