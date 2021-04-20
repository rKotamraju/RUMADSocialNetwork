//
//  LogOutViewController.swift
//  RUMADSocialStarter
//
//  Created by Sujit Molleti on 4/20/21.
//

import UIKit
// DON't FORGET TO IMPORT FIREBASE

class LogOutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapLogOutButton(_ sender: Any) {
        
        //Log Out Using Firebase
        
        navigateToLogIn()
    }
    
    func navigateToLogIn(){
        let signInViewController = storyboard?.instantiateViewController(withIdentifier: "LogInViewController")
        view.window?.rootViewController = signInViewController
        view.window?.makeKeyAndVisible()
    }
    

}
