//
//  SignUpViewController.swift
//  RUMADSocialStarter
//
//  Created by Sujit Molleti on 4/19/21.
//

import UIKit
import Firebase
//DON'T FORGET TO IMPORT FIREBASE

class SignUpViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func validateFields() -> Bool{
        
        if usernameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
         passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""{
            return true
        }
        
        return false
    }
    
    @IBAction func createAccountButtonTapped(_ sender: Any) {
        
        //USE FIREBASE HERE!!! Create an Account on Firebase
        let errors = validateFields()
        let username = usernameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        let email = emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines)
        
        Auth.auth().createUser(withEmail: email!, password: password!) {(result, error) in
            
            if error != nil{
                print("error in creating user")
            }
            else{
                let db = Firestore.firestore()
                db.collection("uesrs").addDocument(data: ["username" : username!, "uid" : result!.user.uid]){
                    (error) in
                    
                    if(error != nil){
                        print("Not about to save data")
                    }else{
                        print("successfully saved user data in users colelction")
                    }
                }
                print("Success")
            }
        }
        self.navigateToFeed()
        
    }
    
    func navigateToFeed() {
        let feedViewController = storyboard?.instantiateViewController(withIdentifier: "FeedViewController")
        self.view.window?.rootViewController = feedViewController
        self.view.window?.makeKeyAndVisible()
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
