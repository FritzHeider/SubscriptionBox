//
//  LoginVC.swift
//  Day4
//
//  Created by Fritz Heider on 2/6/20.
//  Copyright © 2020 Make School. All rights reserved.
//

import UIKit



class LoginVC: UIViewController {
    
    var titleConstraintStart: NSLayoutConstraint!
    var titleConstraintEnd: NSLayoutConstraint!
    
    
    let appNameLabel: UILabel = {
        let label = UILabel()
        label.text = "FritzCoin"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.black
        label.textAlignment = .center
        label.font = UIFont(name: "Times New Roman", size: 80)
        return label
    }()
    
    let mainImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "box")
        return imageView
    }()
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
        addGradientToView(view: self.view)
        setImageView()
        setLabel()
        createButton()
    }
    
    
    func createButton(){
        view.addSubview(loginButton)
        
        loginButton.addTarget(self, action: #selector(goNextScene), for: .touchUpInside)
        
        
        //loginButton.setTitle("Home", for: .normal)
        loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -60).isActive = true
        loginButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
    func setImageView(){
        self.view.addSubview(mainImage)
        mainImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        mainImage.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -20).isActive = true
    }
    
    func setLabel(){
        self.view.addSubview(appNameLabel)
        appNameLabel.widthAnchor.constraint(equalTo: self.view.widthAnchor).isActive = true
        appNameLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        titleConstraintEnd = appNameLabel.centerYAnchor.constraint(equalTo: mainImage.topAnchor, constant: -60)
        titleConstraintStart = appNameLabel.centerYAnchor.constraint(equalTo: mainImage.centerYAnchor, constant: 5)
        titleConstraintStart.isActive = true
        appNameLabel.transform = CGAffineTransform(scaleX: 0, y: 0)
        
    }
    
    @objc func goNextScene(){
        let navigationController = UINavigationController(rootViewController: TabBarController())
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
    override func viewDidAppear(_ animated: Bool) {
        titleConstraintStart.isActive = false
        titleConstraintEnd.isActive = true
        UIView.animate(withDuration: 2.0, delay: 0.2,
                       usingSpringWithDamping: 0.6, initialSpringVelocity: 0.0, options: [ .curveEaseInOut],
                       animations: {
                        self.view.layoutIfNeeded()
                        self.appNameLabel.transform = CGAffineTransform(scaleX: 1, y: 1)
        }, completion: nil)
    }
}
