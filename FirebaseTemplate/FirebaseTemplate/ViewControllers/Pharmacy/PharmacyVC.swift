//
//  PharmacyVC.swift
//  FirebaseTemplate
//
//  Created by moahammed on 7/17/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class PharmacyVC: UIViewController {
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    
    @IBAction func segment(_ sender: UISegmentedControl) {
        
        if (sender.selectedSegmentIndex == 0)
        {
            UIView.animate(withDuration: 0.5,animations:
                {
                    self.view1.alpha = 1.0
                    self.view2.alpha = 0.0
                    self.view3.alpha = 0.0
                    self.view4.alpha = 0.0
                    self.view5.alpha = 0.0
            })
        }
        else if (sender.selectedSegmentIndex == 1) {
            UIView.animate(withDuration: 0.5, animations:
                {
                    self.view1.alpha = 0.0
                    self.view2.alpha = 1.0
                    self.view3.alpha = 0.0
                    self.view4.alpha = 0.0
                    self.view5.alpha = 0.0
            })
        }
        else if (sender.selectedSegmentIndex == 2) {
            UIView.animate(withDuration: 0.5, animations:
                {
                    self.view1.alpha = 0.0
                    self.view2.alpha = 0.0
                    self.view3.alpha = 1.0
                    self.view4.alpha = 0.0
                    self.view5.alpha = 0.0
            })
        }
        else if (sender.selectedSegmentIndex == 3) {
            UIView.animate(withDuration: 0.5, animations:
                {
                    self.view1.alpha = 0.0
                    self.view2.alpha = 0.0
                    self.view3.alpha = 0.0
                    self.view4.alpha = 1.0
                    self.view5.alpha = 0.0
            })
        }
        else if (sender.selectedSegmentIndex == 4) {
            UIView.animate(withDuration: 0.5, animations:
                {
                    self.view1.alpha = 0.0
                    self.view2.alpha = 0.0
                    self.view3.alpha = 0.0
                    self.view4.alpha = 0.0
                    self.view5.alpha = 1.0
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
