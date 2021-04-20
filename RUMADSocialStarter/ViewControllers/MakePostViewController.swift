//
//  MakePostViewController.swift
//  RUMADSocialStarter
//
//  Created by Sujit Molleti on 4/19/21.
//

import UIKit

class MakePostViewController: UIViewController {

    @IBOutlet weak var tweetButton: UIButton!
    @IBOutlet weak var tweetBodyTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapSendTweetButton(_ sender: Any) {
        
        
        self.dismiss(animated: true, completion: nil)
    }
}
