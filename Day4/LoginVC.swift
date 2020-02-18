//
//  LoginVC.swift
//  Day4
//
//  Created by Fritz Heider on 2/6/20.
//  Copyright © 2020 Make School. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    
    let loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login", for: .normal)
        button.backgroundColor = UIColor(displayP3Red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewdidload!!!!!!!!")
        createButton()
    }

    
    func createButton(){
        view.addSubview(loginButton)
        
        loginButton.addTarget(self, action: #selector(goNextScene), for: .touchUpInside)
        
        
        loginButton.setTitle("Home", for: .normal)
        loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60).isActive = true
        loginButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
    
    @objc func goNextScene(){
        let navigationController = UINavigationController(rootViewController: HomeViewController())
        self.view.window!.rootViewController = navigationController
        
    }
    
    
    func addGradientToView(view: UIView)
    {
        //gradient layer
        let gradientLayer = CAGradientLayer()
        
        //define colors
        gradientLayer.colors = [UIColor.green.cgColor, UIColor.white.cgColor, UIColor.yellow.cgColor]
        
        //define locations of colors as NSNumbers in range from 0.0 to 1.0
        //if locations not provided the colors will spread evenly
        gradientLayer.locations = [0.0, 0.5, 0.8]
        
        //define frame
        gradientLayer.frame = view.bounds
        
        //insert the gradient layer to the view layer
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
