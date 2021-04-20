//
//  SignUpViewController.swift
//  RUMADSocialStarter
//
//  Created by Sujit Molleti on 4/19/21.
//

import UIKit
//DON'T FORGET TO IMPORT FIREBASE

class SignUpViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func createAccountButtonTapped(_ sender: Any) {
        
        //USE FIREBASE HERE!!! Create an Account on Firebase
        
        
        navigateToFeed()
        
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
