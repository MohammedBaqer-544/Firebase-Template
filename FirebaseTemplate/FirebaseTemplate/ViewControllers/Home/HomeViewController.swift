//
//  HomeViewController.swift
//  FirebaseTemplate
//
//  Created by moahammed on 7/14/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var nameLable: UILabel!
    var stringHolder:String = ""

    @IBOutlet weak var stepsLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLable.text = globalName
//        stringHolder
        stepsLable.text = globalSteps

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
