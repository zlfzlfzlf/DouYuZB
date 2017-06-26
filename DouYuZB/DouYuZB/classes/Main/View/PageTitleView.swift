//
//  PageTitleView.swift
//  DouYuZB
//
//  Created by hanglifting on 17/6/25.
//  Copyright © 2017年 hanglifting. All rights reserved.
//

import UIKit
private let lineViewH: CGFloat = 2
class PageTitleView: UIView {
   fileprivate var titles: [String]
    
    fileprivate lazy var titleLabels: [UILabel] = [UILabel]()
    //懒加载属性
    fileprivate lazy var scrollView: UIScrollView = {
       let scrollView = UIScrollView()
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.scrollsToTop = false
        scrollView.bounces = false
        //scrollView.backgroundColor = UIColor.blue
        return scrollView
        
    }()
    //懒加载
    fileprivate lazy var scrollLine: UIView = {
        let scrolleLine = UIView()
        scrolleLine.backgroundColor = UIColor.orange
        return scrolleLine
    }()
    
    
    init(frame: CGRect, titles: [String]) {
        self.titles = titles
        super.init(frame: frame)
        setUpUI()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension PageTitleView{
    fileprivate func setUpUI() {
       // 1.添加scrollView
        addSubview(scrollView)
        scrollView.frame = bounds
        // 2.添加title对应的label
        setUpLabels()
        setBottomLine()
    }
    
    private func setUpLabels() {
        
        let labelW:CGFloat = frame.width / CGFloat(titles.count)
        let labelH:CGFloat = frame.height - lineViewH
        let labelY:CGFloat = 0
        for (index, title) in titles.enumerated() {
        //1.创建label
            let titleLabel = UILabel()
        //2.设置label的属性
            titleLabel.text = title
            titleLabel.tag = index
            titleLabel.textColor = UIColor.darkGray
            titleLabel.textAlignment = .center
            titleLabel.font = UIFont.systemFont(ofSize: 16.0)
        //3.设置frame
           
            let labelX:CGFloat = labelW * CGFloat(index)
            
            
            titleLabel.frame = CGRect(x: labelX, y: labelY, width: labelW, height: labelH)
            titleLabels.append(titleLabel)
            scrollView.addSubview(titleLabel)
            
        }
    }
    
    private func setBottomLine(){
        let bottomView = UIView()
        bottomView.backgroundColor = UIColor.lightGray
        let bittomH:CGFloat = 0.5
        bottomView.frame = CGRect(x: 0, y: frame.height - bittomH, width: frame.width, height: bittomH)
        addSubview(bottomView)
        
        //获取第一个label
        guard let firstLabel = titleLabels.first else {
            return
        }
        firstLabel.textColor = UIColor.orange
        
        scrollLine.frame = CGRect(x: firstLabel.frame.origin.x, y: frame.height - lineViewH, width: firstLabel.frame.width, height: lineViewH)
        scrollView.addSubview(scrollLine)
        
        
    }
    
}


