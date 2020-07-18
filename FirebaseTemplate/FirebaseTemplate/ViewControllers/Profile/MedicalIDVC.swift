//
//  MedicalIDVC.swift
//  FirebaseTemplate
//
//  Created by moahammed on 7/15/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class MedicalIDVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {

    @IBOutlet weak var bloodType: UITextField!
    @IBOutlet weak var weightField: UITextField!
    @IBOutlet weak var heightField: UITextField!
    @IBOutlet weak var fatherPhoneNumber: UITextField!
    @IBOutlet weak var motherPhoneNumber: UITextField!
    @IBOutlet weak var emergencyPhoneNumber: UITextField!
    
    var bloodData = ["A+", "A-", "B+", "B-","AB+", "AB-", "O+", "O-"]
    var picker = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        picker.delegate = self
               picker.dataSource = self
               bloodType.inputView = picker
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
           return 1
       }
       
       func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
           return bloodData.count
       }
       
       func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
           bloodType.text = bloodData[row]
       }
       
       func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
           return bloodData[row]
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
