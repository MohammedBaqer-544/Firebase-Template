//
//  WaterVC.swift
//  FirebaseTemplate
//
//  Created by moahammed on 7/19/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class WaterVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var water: UITextField!
    
    var waterData = ["٣٠ مل", "٥٠ مل", "١٠٠ مل", "١٥٠ مل","٢٠٠ مل", "٢٥٠ مل", "٣٠٠ مل", "٣٣٠ مل", "٤٠٠ مل", "٥٠٠ مل", "٦٠٠ مل", "٨٠٠ مل", "١٠٠٠ مل"]
    var picker = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        picker.delegate = self
        picker.dataSource = self
        water.inputView = picker
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return waterData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        water.text = waterData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return waterData[row]
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
