//
//  PharmacyVC.swift
//  FirebaseTemplate
//
//  Created by moahammed on 7/17/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class PharmacyVC: UIViewController {

    @IBOutlet weak var p1: UIView!
    @IBOutlet weak var p2: UIView!
    
    @IBAction func share6(_ sender: UISegmentedControl) {
        
        if (sender.selectedSegmentIndex == 0)
            {
                UIView.animate(withDuration: 0.5,animations:
                    {
                    self.p1.alpha = 1.0
                    self.p2.alpha = 0.0
                })
            }
            else if (sender.selectedSegmentIndex == 1) {
                UIView.animate(withDuration: 0.5, animations:
                    {
                        self.p1.alpha = 0.0
                        self.p2.alpha = 1.0
            })
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        tableView.tableHeaderView?.frame.size.height = 50

        // Do any additional setup after loading the view.
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
