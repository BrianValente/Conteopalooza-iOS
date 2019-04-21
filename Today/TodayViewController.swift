//
//  TodayViewController.swift
//  Today
//
//  Created by Brian Valente on 12/11/18.
//  Copyright © 2018 Brian Valente. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
        
    @IBOutlet weak var remainingDaysStackView: UIStackView!
    @IBOutlet weak var remainingDaysLabel1: UILabel!
    @IBOutlet weak var remainingDaysLabel2: UILabel!
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var countdownFinishedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //
        
        let remainingDays = getRemainingDays()
        
        if (remainingDays > 0) {
            countdownFinishedLabel.removeFromSuperview()
            
            label.text = String(remainingDays)
            
            if (remainingDays == 1) {
                remainingDaysLabel1.text = "¡Falta"
                remainingDaysLabel2.text = "DÍA"
            }
        } else if (remainingDays < -2) {
            remainingDaysStackView.removeFromSuperview()
            countdownFinishedLabel.text = "¡Nos vemos el año que viene! 🤘🏻"
        } else {
            remainingDaysStackView.removeFromSuperview()
            countdownFinishedLabel.text = "¡Disfrutá del Lollapalooza! 🥳"
        }
        /*
 
         
         
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
         countdownFinishedEmojiLabel.text = "🗓"
         }
         else {
         remainingDaysStackView.removeFromSuperview()
         countdownFinishedLabel.text = "¡Disfrutá del Lollapalooza!"
         countdownFinishedEmojiLabel.text = "🥳"
         }
 
        */
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(onTap))
        view.addGestureRecognizer(tap)
        
        
        // Do any additional setup after loading the view from its nib.
    }
    
    @objc func onTap(sender: Any?) {
        extensionContext?.open(URL(string: "conteopalooza://")! , completionHandler: nil)
    }
    
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        completionHandler(NCUpdateResult.noData)
    }
    
    func getRemainingDays() -> Int {
        let formatter = DateFormatter()
        formatter.calendar = Calendar(identifier: .gregorian)
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        guard let deadline = formatter.date(from: "2019-03-29 00:00:00") else {
            return -1
        }
        
        let remaining = deadline.timeIntervalSince(Date()) / 86400
        
        return Int(remaining.rounded(.up))
    }
    
    
    
}
