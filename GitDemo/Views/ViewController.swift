//
//  ViewController.swift
//  GitDemo
//
//  Created by 陈天宇 on 2024/12/21.
//

import UIKit

class ViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Setup tab bar view controllers
        let firstVC = FirstViewController()
        firstVC.view.backgroundColor = .red
        firstVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        
        let secondVC = SecondViewController()
        secondVC.view.backgroundColor = .green
        secondVC.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 1)
        
        let thirdVC = ThirdViewController()
        thirdVC.view.backgroundColor = .blue
        thirdVC.tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 2)

        setViewControllers([firstVC, secondVC, thirdVC], animated: false)
    }
    
}
