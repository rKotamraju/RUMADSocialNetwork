//
//  LogInViewController.swift
//  RUMADSocialStarter
//
//  Created by Sujit Molleti on 4/19/21.
//

import UIKit

class LogInViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let LoginToSignUpSegue = "LoginToSignUp"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func LogInButtonTapped(_ sender: Any) {
        //Authenticate User using Firebase
        
        let feedViewController = storyboard?.instantiateViewController(identifier: "FeedViewController")
        
        view.window?.rootViewController = feedViewController
        
        view.window?.makeKeyAndVisible()
        
    }
    
    @IBAction func signUpButtonTapped(_ sender: Any) {
        
        performSegue(withIdentifier: LoginToSignUpSegue, sender: nil)
        
    }
    
}
