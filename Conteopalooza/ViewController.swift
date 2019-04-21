//
//  ViewController.swift
//  Conteopalooza
//
//  Created by Brian Valente on 12/11/18.
//  Copyright © 2018 Brian Valente. All rights reserved.
//

import UIKit
import GoogleMobileAds
import Crashlytics

class ViewController: UIViewController {
    
    @IBOutlet weak var daysLabel: UILabel!
    @IBOutlet weak var ad: GADBannerView!
    @IBOutlet weak var paint: UIImageView!
    @IBOutlet weak var layer1: UIView!
    @IBOutlet weak var layer2: UIView!
    @IBOutlet weak var layer3: UIView!
    @IBOutlet weak var layer4: UIView!
    @IBOutlet weak var countdownStackView: UIStackView!
    
    @IBOutlet weak var remainingDaysStackView: UIStackView!
    @IBOutlet weak var remainingDaysLabel1: UILabel!
    @IBOutlet weak var remainingDaysLabel2: UILabel!
    
    
    @IBOutlet weak var countdownFinishedStackView: UIStackView!
    @IBOutlet weak var countdownFinishedLabel: UILabel!
    @IBOutlet weak var countdownFinishedEmojiLabel: UILabel!
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //setUpTabBar()
        // Do any additional setup after loading the view, typically from a nib.
        
        let remainingDays = getRemainingDays()
        
        if (remainingDays > 0) {
            countdownFinishedStackView.removeFromSuperview()
            
            daysLabel.text = String(remainingDays)
            
            if (remainingDays == 1) {
                remainingDaysLabel1.text = "¡Falta"
                remainingDaysLabel2.text = "DÍA"
            }
        } else if (remainingDays < -2) {
            remainingDaysStackView.removeFromSuperview()
            countdownFinishedLabel.text = "¡Nos vemos el año que viene!"
            countdownFinishedEmojiLabel.text = "🤘🏻"
        }
        else {
            remainingDaysStackView.removeFromSuperview()
            countdownFinishedLabel.text = "¡Disfrutá del Lollapalooza!"
            countdownFinishedEmojiLabel.text = "🥳"
        }
        
        
        ad.adUnitID = "ca-app-pub-1154081269690295/9561287379"
        ad.rootViewController = self
        ad.load(GADRequest())
        
        //motionEffect(view: paint, amount: 10)
        
        ViewController.motionEffect(view: layer1, amount: 25)
        
        ViewController.motionEffect(view: layer2, amount: 40)
        
        ViewController.motionEffect(view: layer3, amount: 20)
        
        ViewController.motionEffect(view: layer4, amount: 10)
        
        ViewController.motionEffect(view: countdownStackView, amount: 6)
    }

//    @IBAction func crash(_ sender: Any) {
//        Crashlytics.sharedInstance().crash()
//    }
    
    func setUpTabBar() {
        let background = #imageLiteral(resourceName: "NavigationBar")
        
        let tabBar = tabBarController!.tabBar
        
        tabBar.layer.borderWidth = 0.0
        tabBar.layer.borderColor = UIColor.clear.cgColor
        tabBar.layer.shadowOpacity = 0
        tabBar.layer.shadowOffset = CGSize(width: 0, height: 0)
        
        tabBar.frame = CGRect(x: 0, y: 0, width: tabBar.frame.width, height: tabBar.frame.height + 10)
        
        UIGraphicsBeginImageContext(tabBarController!.tabBar.frame.size)
        let tabBarBounds = tabBar.bounds
        let rect = CGRect(x: 0, y: 0, width: tabBarBounds.width, height: (tabBarBounds.width * background.size.height / background.size.width))
        background.draw(in: rect)
        
        if let image = UIGraphicsGetImageFromCurrentImageContext(){
            UIGraphicsEndImageContext()
            tabBar.backgroundImage = image
        } else{
            UIGraphicsEndImageContext()
            debugPrint("Image not available")
        }
    }
    
    func getRemainingDays() -> Int {
//        let today = Date().midnight.timeIntervalSince1970
//
//        let formatter = DateFormatter()
//        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
//        let deadline = formatter.date(from: "2019-03-29 00:00:00")!.timeIntervalSince1970
//
//        let remaining = (deadline - today) / 86400
//
//        let days = Int(remaining.rounded())
//
//        return days
        
        let formatter = DateFormatter()
        formatter.calendar = Calendar(identifier: .gregorian)
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        guard let deadline = formatter.date(from: "2019-03-29 00:00:00") else {
            return -1
        }
        
        let remaining = deadline.timeIntervalSince(Date()) / 86400
        
        return Int(remaining.rounded(.up))
    }
    
    static func motionEffect(view: UIView, amount: CGFloat) {
        let min = CGFloat(-amount)
        let max = CGFloat(amount)
        
        let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue = min
        xMotion.maximumRelativeValue = max
        
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
        yMotion.minimumRelativeValue = min
        yMotion.maximumRelativeValue = max
        
        let motionEffectGroup = UIMotionEffectGroup()
        motionEffectGroup.motionEffects = [xMotion,yMotion]
        
        view.addMotionEffect(motionEffectGroup)
    }


}

