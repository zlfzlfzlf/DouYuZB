//
//  UIBarButton-Extention.swift
//  DouYuZB
//
//  Created by hanglifting on 17/6/25.
//  Copyright © 2017年 hanglifting. All rights reserved.
//

import UIKit

extension UIBarButtonItem{
  ////构造函数
    //便利构造函数，{自己查看convenience}
   convenience init(imageName: String,hightImage: String = "", size: CGSize = CGSize.zero) {
    let btn = UIButton()
    btn.setImage(UIImage.init(named: imageName), for: .normal)
    if hightImage != "" {
        btn.setImage(UIImage.init(named: hightImage), for: .highlighted)
    }
    if size == CGSize.zero {
        btn.sizeToFit()
    }else{
        btn.frame = CGRect(origin: CGPoint.zero, size: size)
    }
    self.init(customView: btn)
    //self.init(customView: btn)
    //let btnItem = UIBarButtonItem(customView: btn)
    }
    
    ///类方法
//    class func creatImtem(imageName: String,hightImage: String, size: CGSize) ->UIBarButtonItem {
//        let btn = UIButton()
//        btn.setImage(UIImage.init(named: imageName), for: .normal)
//        btn.setImage(UIImage.init(named: hightImage), for: .highlighted)
//        btn.frame = CGRect(origin: CGPoint.zero, size: size)
//        let btnItem = UIBarButtonItem(customView: btn)
//        
//        return btnItem
//    }
}
