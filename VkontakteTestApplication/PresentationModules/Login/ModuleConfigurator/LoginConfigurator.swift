//
//  LoginConfigurator.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 26.05.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

import Foundation

class LoginConfigurator {
	func configure(_ view: LoginViewController) {
		let interactor = LoginInteractor()
		let presenter = LoginPresenter()
		
		// MARK: - View configuration
		view.output = presenter
		
		// MARK: - Presenter configuration
		presenter.interactor = interactor
		presenter.view = view
		presenter.router = LoginRouter()
		
		// MARK: - Interactor configuration
		interactor.output = presenter
		interactor.authorizationService = AuthorizationService()
	}
}
