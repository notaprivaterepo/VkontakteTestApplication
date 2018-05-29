//
//  LoginPresenter.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 26.05.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

import Foundation

class LoginPresenter {
	
	weak var view: LoginViewInput?
	var interactor: LoginInteractorInput!
	var router: LoginRouterInput!
	
}

// MARK: - LoginViewOutput
extension LoginPresenter: LoginViewOutput {
	func loginButtonClicked() {
		interactor.login()
	}
}

// MARK: - LoginInteractorOutput
extension LoginPresenter: LoginInteractorOutput {
	func authorizationSuccessfullyCompleted() {
		router.openFriends()
	}
	
	func authorizationFailed(with error: Error) {
		
	}
}
