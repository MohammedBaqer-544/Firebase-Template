//
//  Settings.swift
//  FirebaseTemplate
//
//  Created by moahammed on 7/17/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class Settings: UIViewController {
    
    @IBAction func backBtn(_ sender: Any) {
           self.navigationController?.popViewController(animated: true)
       }

    override func viewDidLoad() {
        super.viewDidLoad()

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
