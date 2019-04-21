//
//  CustomTabBarController.swift
//  Conteopalooza
//
//  Created by Brian Valente on 12/13/18.
//  Copyright © 2018 Brian Valente. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillLayoutSubviews() {
//        var tabFrame = self.tabBar.frame
//        tabFrame.size.height += 10
//        tabFrame.origin.y = self.view.frame.size.height - tabFrame.size.height
//        self.tabBar.frame = tabFrame
        
        (self.tabBar as! CustomTabBar).changeHeight(height: view.frame.size.height)
        
        super.viewWillLayoutSubviews()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
