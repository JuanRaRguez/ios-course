//
//  LoginView.swift
//  Bankey
//
//  Created by Juan Ramon on 10/02/23.
//

import Foundation
import UIKit

class LoginView: UIView {
    
    let stackView = UIStackView()
    let usernameTextfield = UITextField()
    let passwordTextfield = UITextField()
    let dividerView = UIView()
    
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        style()
        autolayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
}
extension LoginView {
    func style(){
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .secondarySystemBackground
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 8
        
        
        usernameTextfield.translatesAutoresizingMaskIntoConstraints = false
        usernameTextfield.placeholder = "Username"
        usernameTextfield.delegate = self
        
        dividerView.translatesAutoresizingMaskIntoConstraints = false
        dividerView.backgroundColor = .secondarySystemFill
        
        passwordTextfield.translatesAutoresizingMaskIntoConstraints = false
        passwordTextfield.placeholder = "Password"
        passwordTextfield.isSecureTextEntry = true
        passwordTextfield.delegate = self
        
        layer.cornerRadius = 5
        clipsToBounds = true
    }
    
    func autolayout(){
        stackView.addArrangedSubview(usernameTextfield)
        stackView.addArrangedSubview(dividerView)
        stackView.addArrangedSubview(passwordTextfield)
        addSubview(stackView)
        NSLayoutConstraint.activate([
        
            stackView.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 1),
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 1),
            trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 1),
            bottomAnchor.constraint(equalToSystemSpacingBelow: stackView.bottomAnchor, multiplier: 1),
        
            dividerView.heightAnchor.constraint(equalToConstant: 1)
            
        ])
    }
}
extension LoginView: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        usernameTextfield.endEditing(true)
        passwordTextfield.endEditing(true)
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if usernameTextfield.text != "" {
            return true
        } else {
            return false
        }
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
}
