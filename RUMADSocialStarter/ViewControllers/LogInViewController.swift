//
//  LogInViewController.swift
//  RUMADSocialStarter
//
//  Created by Sujit Molleti on 4/19/21.
//

import UIKit
//DON'T FORGET TO IMPORT FIREBASE
import Firebase

class LogInViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let LoginToSignUpSegue = "LoginToSignUp"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func validateFields() -> Bool{
        
        if passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""{
            return true
        }
        
        return false
    }
    
    @IBAction func LogInButtonTapped(_ sender: Any) {
        //USE FIREBASE HERE!!! Authenticate User using Firebase
        let errorsPresent = validateFields()
        if errorsPresent{
            print("errors with user input")
            return
        }
        
        guard let password = passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) else{return}
        guard let email = emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) else{return}
        
        
        Auth.auth().signIn(withEmail: email, password: password){(result, error) in
            if(error != nil){
                print("error")
            }else{
                print("user success log in")
                self.navigateToFeed()
            }
        }
//        navigateToFeed()
    }
    
    func navigateToFeed(){
        let feedViewController = storyboard?.instantiateViewController(identifier: "FeedViewController")
        view.window?.rootViewController = feedViewController
        view.window?.makeKeyAndVisible()
    }
    
    @IBAction func signUpButtonTapped(_ sender: Any) {
        
        performSegue(withIdentifier: LoginToSignUpSegue, sender: nil)
        
    }
    
}
