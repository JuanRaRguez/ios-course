//
//  LoginView.swift
//  Bankey
//
//  Created by Juan Ramon on 10/02/23.
//

import Foundation
import UIKit

class LoginView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        style()
        autolayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    //This help us to give a default size to our view
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 200)
    }
    
}
extension LoginView {
    func style(){
        
    }
    
    func autolayout(){
        
    }
}
