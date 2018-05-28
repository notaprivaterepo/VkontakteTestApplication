//
//  LoginViewController.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 26.05.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
	
	var output: LoginViewOutput!
	
	@IBOutlet weak var loginTextField: UITextField!
	@IBOutlet weak var passwordTextField: UITextField!
	
	@IBAction func login() {
		output.loginButtonClicked()
	}
}

// MARK: - LoginViewInput
extension LoginViewController: LoginViewInput {
	
}
