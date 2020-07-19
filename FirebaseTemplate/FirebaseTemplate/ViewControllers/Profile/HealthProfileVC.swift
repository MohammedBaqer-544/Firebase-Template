//
//  HealthProfileVC.swift
//  FirebaseTemplate
//
//  Created by moahammed on 7/15/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class HealthProfileVC: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {
    
    @IBOutlet weak var birthdatePicker: UIDatePicker!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var bloodType: UITextField!
    @IBOutlet weak var gender: UITextField!
    
    var data = ["ذكر" ,"أنثى"]
    var bloodData = ["A+", "A-", "B+", "B-","AB+", "AB-", "O+", "O-"]
    var picker = UIPickerView()
    
    var dateFormatter: DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeZone = .none
        
        return dateFormatter
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        picker.delegate = self
        picker.dataSource = self
        bloodType.inputView = picker
        gender.inputView = picker
        
        title = "Age Calculator"
        updateViews()
        
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
    
    
    func pickerView1(_ pickerView1: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count
    }
    
    func pickerView1(_ pickerView1: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        gender.text = data[row]
    }
    
    func pickerView1(_ pickerView1: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[row]
    }
    
    
    @IBAction func birthdateSelected(sender: UIDatePicker) {
        updateViews()
    }
    
    private func updateViews() {
        /// Initializing a new date instance provides a date set to the current date and time
        
        
        let age = findAgeFromBirthdate()
        ageLabel.text = "\(age)"
        
        
    }
    
    private func findAgeFromBirthdate() -> Int {
        let calendar = Calendar.current
        
        // Replace the hour (time) of both dates with 00:00 (midnight)
        let today = calendar.startOfDay(for: Date())
        let birthdate = calendar.startOfDay(for: birthdatePicker.date)
        
        /// Compare the two dates and remove only the year property (represents the age of the user)
        let components = calendar.dateComponents([.year], from: birthdate, to: today)
        
        return components.year ?? 0
    }
    
    func findNextBirthdayUsingBirthdate() -> Date {
        /// Fetches user's calendar. Could be Gregorian or another one, e.g. the Buddhist or Jewish calendars.
        let calendar = Calendar.current
        let today = Date()
        
        /// Pulls the birthdate object apart into year, month, and day components and lets us use/manipulate those pieces individually.
        var birthdateComponents = calendar.dateComponents([.year, .month, .day], from: birthdatePicker.date)
        
        /// Uses today's date and simply pulls the year out as a number
        let currentYear = calendar.component(.year, from: today)
        
        /// Changes the year of the birthdate components object to the current year.
        birthdateComponents.year = currentYear
        
        /// The following object is a dateComponents object that only has its month
        /// property set. It represents 12 months of time.
        var oneYear = DateComponents()
        oneYear.month = 12
        
        /// Unwrap the date value returned from the date components since it's optional,
        /// and add the "oneYear" components to that date to produce a date 1 year in the future
        guard let currentYearBirthday = calendar.date(from: birthdateComponents),
            let nextBirthday = calendar.date(byAdding: oneYear, to: currentYearBirthday) else { return Date() }
        
        /// Check to see if the current year birthday is in the future,
        /// as compared to today's date (meaning the user's birthday hasn't happened yet this year)
        if today.compare(currentYearBirthday) == .orderedAscending {
            return currentYearBirthday
        } else {
            return nextBirthday
        }
    }
}
