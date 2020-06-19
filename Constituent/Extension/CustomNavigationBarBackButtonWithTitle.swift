//
//  CustomNavigationBarBackButtonWithTitle.swift
//  Constituent
//
//  Created by Happy Sanz Tech on 18/06/20.
//  Copyright © 2020 HappySanzTech. All rights reserved.
//

import UIKit

extension UIViewController
{
    func addCustomizedBackBtn (title:String) {
            //Back buttion
            let btnLeftMenu: UIButton = UIButton()
            btnLeftMenu.setTitle(title, for: .normal)
            btnLeftMenu.setImage(UIImage(named: "backbutton"), for: UIControl.State())
            btnLeftMenu.addTarget(self, action: #selector(backButtonClick), for: UIControl.Event.touchUpInside)
            btnLeftMenu.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
            let barButton = UIBarButtonItem(customView: btnLeftMenu)
            self.navigationItem.leftBarButtonItem = barButton
    }
    
    @objc public func backButtonClick()
    {
        
    }
    
    func setLeftAlignedNavigationItemTitle(text: String,color: UIColor,margin left: CGFloat)
    {
        let titleLabel = UILabel()
        titleLabel.textColor = color
        titleLabel.text = text
        titleLabel.textAlignment = .left
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.navigationItem.titleView = titleLabel
        
        guard let containerView = self.navigationItem.titleView?.superview else { return }
        
        // NOTE: This always seems to be 0. Huh??
        let leftBarItemWidth = self.navigationItem.leftBarButtonItems?.reduce(0, { $0 + $1.width })
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: containerView.topAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            titleLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor,
                                             constant: (leftBarItemWidth ?? 0) + left),
            titleLabel.rightAnchor.constraint(equalTo: containerView.rightAnchor)
        ])
    }
}
    