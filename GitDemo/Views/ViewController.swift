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
        firstVC.view.backgroundColor = .systemBackground
        firstVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        
        let secondVC = SecondViewController()
        secondVC.view.backgroundColor = .systemBackground
        secondVC.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 1)
        
        let thirdVC = ThirdViewController()
        thirdVC.view.backgroundColor = .systemBackground
        thirdVC.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 2)

        setViewControllers([firstVC, secondVC, thirdVC], animated: true)
        
        // 确保 tabBar 使用系统默认样式
        if #available(iOS 13.0, *) {
            let appearance = UITabBarAppearance()
            appearance.configureWithDefaultBackground() // 恢复系统默认背景
            tabBar.standardAppearance = appearance
            
            if #available(iOS 15.0, *) {
                tabBar.scrollEdgeAppearance = appearance // 适配滚动边界样式
            }
        } else {
            tabBar.isTranslucent = true // 确保半透明效果
            tabBar.backgroundImage = nil
            tabBar.shadowImage = nil
        }
    }
}
