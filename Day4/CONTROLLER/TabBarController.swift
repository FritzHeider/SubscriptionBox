//
//  TabBarController.swift
//  Day4
//
//  Created by Fritz Heider on 2/27/20.
//  Copyright © 2020 Make School. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController{
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
        
    }
    
    
    func setupViewControllers(){
        var viewControllersArray = [UIViewController]()
        
        let images = ["northAmerica", "southAmerica", "europe", "asia", "australia", "africa"]
        let title = ["North America", "South America", "Europe", "Aisia", "Austrailia", "Africa"]
        
        
        //
        for i in (0...images.count - 1) {
            let vc1 = ContinentVC()
            vc1.imageName = images[i]
            vc1.title = title[i]
            vc1.view.backgroundColor = UIColor.blue
            let navController = UINavigationController(rootViewController:vc1)
            vc1.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
            viewControllersArray.append(navController)
            
            
            
        }
        
        viewControllers = viewControllersArray
        
        

    }
}
