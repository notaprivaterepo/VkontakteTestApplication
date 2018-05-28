//
//  FriendsModuleConfigurator.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 28.05.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

import Foundation

class FriendsConfigurator {
	func configure(_ view: FriendsViewController) {
		let interactor = FriendsInteractor()
		let presenter = FriendsPresenter()
		
		// MARK: - View configuration
		view.output = presenter
		
		// MARK: - Presenter configuration
		presenter.interactor = interactor
		presenter.view = view
		presenter.router = FriendsRouter()
		
		// MARK: - Interactor configuration
		interactor.output = presenter
		
	}
}
