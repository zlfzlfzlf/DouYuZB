//
//  MainViewController.swift
//  DouYuZB
//
//  Created by hanglifting on 17/6/25.
//  Copyright © 2017年 hanglifting. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addChildVC(storybord: "Home")
        addChildVC(storybord: "Lives")
        addChildVC(storybord: "Follow")
        addChildVC(storybord: "prrfile")
        
//        let vc = UIViewController()
//        vc.view.backgroundColor = UIColor.blue
//        
//        addChildViewController(vc)
    }
    
    private func addChildVC(storybord: String) {
        let childVC = UIStoryboard(name: storybord, bundle: nil).instantiateInitialViewController()!
        addChildViewController(childVC)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
