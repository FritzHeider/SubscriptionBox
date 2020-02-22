//
//  HomeViewController.swift
//  Day4
//
//  Created by Fritz Heider on 2/18/20.
//  Copyright © 2020 Make School. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
      
    var container: UIStackView = {
        let stackView: UIStackView = UIStackView(frame: .zero)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .trailing
        stackView.distribution = .fill
        stackView.spacing = 10
        return stackView
    }()
    var button1: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .black
        return button
    }()
    var button2: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .black
        return button
    }()
    var button3: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .black
        return button
    }()
   // let firstV = HomePage()
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        addGradientToView(view: self.view)
    
//        view.addSubview(container)
//        NSLayoutConstraint.activate([
//            container.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.8),
//                   container.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.85),
//                   container.topAnchor.constraint(equalTo: self.view.topAnchor),
//                   container.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
//               ])
        container.addArrangedSubview(button1)
        
        container.addArrangedSubview(button2)
        
        container.addArrangedSubview(button3)

        

        // Do any additional setup after loading the view.
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
