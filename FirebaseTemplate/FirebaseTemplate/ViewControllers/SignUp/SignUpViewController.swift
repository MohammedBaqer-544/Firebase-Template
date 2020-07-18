//
//  SignUpViewController.swift
//  FirebaseTemplate
//
//  Created by moahammed on 7/13/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var phoneNumberField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var passwordConfirmation: UITextField!
    @IBOutlet weak var SignUp: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.isNavigationBarHidden = true
    }
    

    
    @IBAction func signUp() {
        let email = emailField.text!
        let name = nameField.text!
        let phoneNumber = phoneNumberField.text!
        let password = passwordField.text!
        let confirmPassword = passwordConfirmation.text!
        globalName = name
        let person: Person = Person(email: email, name: name, phoneNumber: phoneNumber)
        
        if validatePassword(password: password, conformPassword: confirmPassword){
            Networking.signUp(user: person, password: password, success:  { uid in
                // ✅ Success
                print("You have signed up successfully")
                self.performSegue(withIdentifier: "completeYourAccount", sender: nil)
            }){
                // ❌ Failed
                self.errorMessage(message: "Couldn't sign in, make sure the email and password are correct")
            }
        }
        else{
            errorMessage(message: "Password are not matching!")
        }
    }
    
    func validatePassword(password: String, conformPassword: String) -> Bool{
        return password == conformPassword
    }
    
    func errorMessage(message: String){
        let alertController = UIAlertController(title: "Opps🙈", message: message , preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .cancel)
        alertController.addAction(okAction)
        present(alertController, animated: true)
    }
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {

        setButton()

        return true
    }

    func setButton() {

        let inputValid = checkInput()

        if inputValid {

            SignUp.isEnabled = true

        } else {

            SignUp.isEnabled = false

        }

    }

    func checkInput() -> Bool {

        let nameValue = nameField.text
        let emailValue = emailField.text
        let passwordValue = passwordField.text
        let confirmPasswordValue = passwordConfirmation.text
        let phoneNumberValue = phoneNumberField.text

        if !nameValue!.isEmpty && !emailValue!.isEmpty && !passwordValue!.isEmpty && !phoneNumberValue!.isEmpty && !confirmPasswordValue!.isEmpty {

            return true

        }

        return false

    }
    

    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    @IBAction func nexVCAction(_ sender: Any) {

//        self.performSegue(withIdentifier: "homeViewController", sender: self)

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier  == "homeViewController" {
            let vc = segue.destination as! HomeViewController
            vc.stringHolder = nameField.text!
        }

    }

    
}
var globalName = ""
