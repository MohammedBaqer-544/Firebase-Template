//
//  completeSigningUpVC.swift
//  FirebaseTemplate
//
//  Created by moahammed on 7/13/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class completeSigningUpVC: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {
    
    @IBOutlet weak var genderField: UITextField!
    @IBOutlet weak var dateField: UITextField!
    @IBOutlet weak var civilIDField: UITextField!
    
    
    var data = ["ذكر" ,"أنثى"]
    var picker = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        picker.delegate = self
        picker.dataSource = self
        genderField.inputView = picker
        
        self.dateField.setInputViewDatePicker(target: self, selector: #selector(tapDone)) //1
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        genderField.text = data[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[row]
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    @objc func tapDone() {
        if let datePicker = self.dateField.inputView as? UIDatePicker { // 2-1
            let dateformatter = DateFormatter() // 2-2
            dateformatter.dateStyle = .medium // 2-3
            self.dateField.text = dateformatter.string(from: datePicker.date) //2-4
        }
        self.dateField.resignFirstResponder() // 2-5
    }
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        // get the current text, or use an empty string if that failed
        let currentText = textField.text ?? ""
        
        // attempt to read the range they are trying to change, or exit if we can't
        guard let stringRange = Range(range, in: currentText) else { return false }
        
        // add their new text to the existing text
        let updatedText = currentText.replacingCharacters(in: stringRange, with: string)
        
        // make sure the result is under 16 characters
        return updatedText.count == 12
    }
    
    
    @IBAction func completeSignUp() {
        self.performSegue(withIdentifier: "goHome", sender: nil)
    }
    
}
