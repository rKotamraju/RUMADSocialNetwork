//
//  Utilities.swift
//  RUMADSocialStarter
//
//  Created by Sujit Molleti on 4/20/21.
//

import UIKit

class Utilities {
    
    static func styleTextField(_ textField: UITextField){
        

        let newLayer = CALayer()
        
        
        newLayer.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        
        textField.layer.addSublayer(newLayer)
        
        textField.layer.cornerRadius = 5
        textField.layer.borderColor = UIColor.systemBlue.cgColor
        textField.layer.borderWidth = 1
        
        textField.layer.masksToBounds = true
        
    }
    
    static func styleButton(_ button: UIButton){
        
    }
    
}
