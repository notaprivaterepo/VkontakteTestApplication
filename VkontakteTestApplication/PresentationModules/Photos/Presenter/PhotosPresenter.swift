//
//  PhotosPresenter.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 04.06.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

import Foundation

class PhotosPresenter {
	weak var view: PhotosViewInput?
	var interactor: PhotosInteractorInput!
	var router: PhotosRouterInput!
}

// MARK: - PhotosViewOutput
extension PhotosPresenter: PhotosViewOutput {
	
}

// MARK: - PhotosModuleInput
extension PhotosPresenter: ModuleInput {
	
}

// MARK: - PhotosInteractorOutput
extension PhotosPresenter: PhotosInteractorOutput {

}
