//
//  PhotosModuleConfigurator.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 04.06.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

import Foundation

class PhotosConfigurator {
	func configure(_ view: PhotosViewController) {
		let interactor = PhotosInteractor()
		let presenter = PhotosPresenter()
		
		// MARK: - View configuration
		view.output = presenter
		
		// MARK: - Presenter configuration
		presenter.interactor = interactor
		presenter.view = view
		let router = PhotosRouter()
		router.transitionHandler = view as TransitionHandler
		presenter.router = router
		
		// MARK: - Interactor configuration
		interactor.output = presenter
		interactor.photoService = PhotoService()
		
	}
}
