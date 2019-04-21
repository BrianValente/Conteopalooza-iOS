//
//  CustomTabBar.swift
//  Conteopalooza
//
//  Created by Brian Valente on 12/11/18.
//  Copyright © 2018 Brian Valente. All rights reserved.
//

import UIKit

class CustomTabBar: UITabBar {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    var backgroundImageView: UIImageView?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        unselectedItemTintColor = UIColor(rgb: 0xCAA900)
        setBackground()
    }
    
    func setBackground() {
        self.backgroundColor = UIColor.clear
        self.backgroundImage = UIImage()
        self.shadowImage = UIImage()
        self.barTintColor = UIColor.clear
        self.tintColor = UIColor(rgb: 0x7118D7)
        
        clipsToBounds = false
        
        let background = #imageLiteral(resourceName: "NavigationBar")
        
        isTranslucent = true
        
        
        backgroundImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        backgroundImageView!.image = background
        backgroundImageView!.contentMode = .scaleAspectFit
        insertSubview(backgroundImageView!, at: 0)
        
//        layer.borderWidth = 0.0
//        layer.borderColor = UIColor.clear.cgColor
//        layer.shadowOpacity = 0
//        layer.shadowOffset = CGSize(width: 0, height: 0)
//
//        UIGraphicsBeginImageContext(frame.size)
//        let rect = CGRect(x: 0, y: 0, width: bounds.width, height: (bounds.width * background.size.height / background.size.width))
//        background.draw(in: rect)
//
//        if let image = UIGraphicsGetImageFromCurrentImageContext(){
//            UIGraphicsEndImageContext()
//            backgroundImage = image
//        } else{
//            UIGraphicsEndImageContext()
//            debugPrint("Image not available")
//        }
    }
    
    func changeHeight(height: CGFloat) {
//        frame.size.height += 0
//        frame.origin.y = height - frame.size.height
        backgroundImageView?.removeFromSuperview()
        
        let width = frame.size.width
        let height = frame.size.width * 500 / 900
        print("Width: \(width) Height: \(height)")
        
        backgroundImageView?.frame = CGRect(x: 0, y: -15, width: width, height: height)
        insertSubview(backgroundImageView!, at: 0)
    }

}
