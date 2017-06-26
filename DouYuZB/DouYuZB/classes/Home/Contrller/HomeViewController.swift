//
//  HomeViewController.swift
//  DouYuZB
//
//  Created by hanglifting on 17/6/25.
//  Copyright © 2017年 hanglifting. All rights reserved.
//

import UIKit
private let KTitleViewH: CGFloat = 40

class HomeViewController: UIViewController {

    fileprivate lazy var pageTitleView: PageTitleView = {
        let titleFrame = CGRect(x: 0, y: KstatusBarH + KNavgationBarH, width: UIScreen.main.bounds.width, height: KTitleViewH)
        let titles = ["推荐", "游戏", "娱乐", "趣玩"]
        
        let titleView = PageTitleView(frame: titleFrame, titles: titles)
        //titleView.backgroundColor = UIColor.purple
        return titleView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
       setUpUI()
    }


  
}

/////设置UI界面
extension HomeViewController {
    fileprivate func setUpUI(){
        automaticallyAdjustsScrollViewInsets = false
        setUpNavgation()
        view.addSubview(pageTitleView)
    }
    
    private func setUpNavgation(){
        let size = CGSize(width: 40, height: 40)
        
//        let btn = UIButton()
//        btn.setImage(UIImage.init(named: "logo"), for:.normal)
//        btn.sizeToFit()
        navigationItem.leftBarButtonItem = UIBarButtonItem(imageName: "logo")//(customView: btn);
        
        let historyItem = UIBarButtonItem(imageName: "image_my_history", hightImage: "Image_my_history_click", size: size)
        
        let searchItem = UIBarButtonItem(imageName: "btn_search", hightImage: "btn_search_clicked", size: size)
        
        let qrcodeItem = UIBarButtonItem(imageName: "Image_scan", hightImage: "Image_scan_click", size: size)
        
//        let historyItem = UIBarButtonItem.creatImtem(imageName: "image_my_history", hightImage: "Image_my_history_click", size: size)
//        
//        let searchItem = UIBarButtonItem.creatImtem(imageName: "btn_search", hightImage: "btn_search_clicked", size: size)
//        
//        let qrcodeItem = UIBarButtonItem.creatImtem(imageName: "Image_scan", hightImage: "Image_scan_click", size: size)

        
        
        navigationItem.rightBarButtonItems = [historyItem,searchItem,qrcodeItem]
    }
}
