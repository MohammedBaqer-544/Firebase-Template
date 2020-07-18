//
//  DoctorsVC.swift
//  FirebaseTemplate
//
//  Created by moahammed on 7/17/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class DoctorsVC: UIViewController {
    
    var data: Category!

    @IBOutlet weak var Doctor: UIImageView!
    @IBOutlet weak var briefLabel: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        DoctorDetails()
    }
    
    func DoctorDetails() {
        
   //     self.Doctor.image = UIImage(named: <#T##String#>)
        self.briefLabel.text = data.brief

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
