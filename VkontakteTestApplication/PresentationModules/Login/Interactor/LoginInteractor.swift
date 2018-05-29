//
//  LoginInteractor.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 26.05.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

import Foundation

class LoginInteractor {
	weak var output: LoginInteractorOutput?
	var authorizationService: AuthorizationServiceProtocol!
}

// MARK: - LoginInteractorInput
extension LoginInteractor: LoginInteractorInput {
	func login() {
		authorizationService.login { [weak self] (isSuccess, error) in
			if isSuccess {
				self?.output?.authorizationSuccessfullyCompleted()
			} else if let error = error {
				self?.output?.authorizationFailed(with: error)
			}
		}
	}
	
}
