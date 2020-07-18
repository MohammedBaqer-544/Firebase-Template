//
//  CategoriesDetailsVC.swift
//  FirebaseTemplate
//
//  Created by moahammed on 7/16/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class CategoriesDetailsVC: UIViewController {
    
    var data: Category!
    
    
    @IBOutlet weak var categoryName: UILabel!
    @IBOutlet weak var doctor1: UIImageView!
    @IBOutlet weak var doctor2: UIImageView!
    @IBOutlet weak var doctor3: UIImageView!
    @IBOutlet weak var doctor4: UIImageView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryDetails()
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
    
    func categoryDetails(){
        categoryName.text = data.categoryName
        
        self.doctor1.image = UIImage(named: data.doctors[0])
        self.doctor2.image = UIImage(named: data.doctors[1])
        self.doctor3.image = UIImage(named: data.doctors[2])
        self.doctor4.image = UIImage(named: data.doctors[3])
    }
    
    @IBAction func doctorsBtn(_ sender: UIButton) {
        
        print(sender.tag)
        data = category[sender.tag]
        performSegue(withIdentifier: "goToDoctor", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? DoctorsVC else {
            fatalError("error")
        }
        
        dvc.data = data
    }
    
    
}
