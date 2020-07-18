//
//  SignInViewController.swift
//  FirebaseTemplate
//
//  Created by moahammed on 7/13/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.isNavigationBarHidden = true
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func signIn(){
        let email = emailField.text!
        let password = passwordField.text!
        
        Networking.signIn(user: SignInCredentials(email: email, password: password), success: { uid in
            // ✅ Success
            print("تم تسجيل دخولك بنجاح")
            self.performSegue(withIdentifier: "homeViewController", sender: nil)
        }){ error in
            // ❌ Fail
            self.errorMessage(message: "Couldn't sign in with error: \(error)")
        }
    }
    
    
    func errorMessage(message: String){
        let alertController = UIAlertController(title: "Opps🙈", message: message , preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .cancel)
        alertController.addAction(okAction)
        present(alertController, animated: true)
    }
}

