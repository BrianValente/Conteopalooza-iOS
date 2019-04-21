//
//  LineupDataTableViewController.swift
//  Conteopalooza
//
//  Created by Brian Valente on 12/13/18.
//  Copyright © 2018 Brian Valente. All rights reserved.
//

import UIKit

class LineupDataTableViewController: UITableViewController {
    
    var color: UIColor? = nil
    var secondaryColor: UIColor? = nil
    var date: LineUpDate? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if color != nil {
            navigationController?.navigationBar.barTintColor = color
        }
        
        if secondaryColor != nil {
            view.backgroundColor = secondaryColor
        }

        if date != nil {
            navigationItem.title = date?.name
        }
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func willMove(toParent parent: UIViewController?) {
        navigationController?.navigationBar.barTintColor = LineupViewController.barTintColor
    }
    
//    override func viewWillDisappear(_ animated: Bool) {
//        if color != nil {
//            let animation = CATransition()
//            animation.duration = 0.5
//            animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeOut)
//            animation.type = .fade
//
//            navigationController?.navigationBar.layer.add(animation, forKey: nil)
//
//            UIView.animate(withDuration: 100) {
//                self.navigationController?.navigationBar.layer.backgroundColor = UIColor.purple.cgColor
//                self.navigationController?.navigationBar.layoutIfNeeded()
//            }
//
//        }
//    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return date?.artists.count ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "lineupCell", for: indexPath)
        
        cell.textLabel?.text = date?.artists[indexPath.row].name ?? ""
        cell.selectionStyle = .none
        cell.isUserInteractionEnabled = false
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
