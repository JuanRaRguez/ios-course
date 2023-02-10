//
//  ViewController.swift
//  Bankey
//
//  Created by Juan Ramon on 10/02/23.
//

import UIKit

class LoginViewController: UIViewController {

    let loginView = LoginView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        autolayout()
    }


}
extension LoginViewController {
    private func style(){
        loginView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func autolayout(){
        view.addSubview(loginView)
        
        NSLayoutConstraint.activate([
            loginView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            loginView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            loginView.trailingAnchor.constraint(equalToSystemSpacingAfter: view.trailingAnchor, multiplier: 1)
        ])
    }
    
}
