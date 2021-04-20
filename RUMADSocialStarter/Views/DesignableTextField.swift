//
//  DesignableTextField.swift
//  RUMADSocialStarter
//
//  Created by Sujit Molleti on 4/20/21.
//

import UIKit

@IBDesignable
class DesignableTextField: UITextField {
    
    @IBInspectable var leftImage: UIImage? {
        didSet {
            updateView()
        }
    }
    
//    @IBInspectable var rightImage: UIImage? {
//        didSet {
//            updateView()
//        }
//    }
    
    @IBInspectable var leftPadding: CGFloat = 0 {
        didSet {
            updateView()
        }
    }
    
    func updateView(){
        
        if let image = leftImage {
            leftViewMode = .always
            
            let imageView = UIImageView(frame: CGRect(x: leftPadding, y: 0, width: 20, height: 20))
            imageView.image = image
            
            var width = 20 + leftPadding
            
            if borderStyle == UITextField.BorderStyle.none || borderStyle == UITextField.BorderStyle.line {
                width = width + 5
            }
            
            let view = UIView(frame: CGRect(x: 0, y: 0, width: width, height: 20))
            view.addSubview(imageView)
            
            leftView = view
        } else{
            leftViewMode = .never
        }
        
//        if let image = rightImage {
//            rightViewMode = .always
//            
//            let imageView = UIImageView(frame: CGRect(x: leftPadding *
//                                                        -1, y: 0, width: 20, height: 20))
//            imageView.image = image
//            
//            var width = 20 + leftPadding
//            
//            if borderStyle == UITextField.BorderStyle.none || borderStyle == UITextField.BorderStyle.line {
//                width = width + 5
//            }
//            
//            let view = UIView(frame: CGRect(x: 0, y: 0, width: width, height: 20))
//            view.addSubview(imageView)
//            
//            rightView = view
//            
//        } else {
//            rightViewMode = .never
//        }
        
        
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
