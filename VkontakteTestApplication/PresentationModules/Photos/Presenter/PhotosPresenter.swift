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
	var currentFriendId: Int?
}

// MARK: - PhotosViewOutput
extension PhotosPresenter: PhotosViewOutput {
	func viewIsReady() {
		if let friendId = currentFriendId {
			interactor.getPhotos(for: friendId)
		}
	}
}

// MARK: - PhotosModuleInput
extension PhotosPresenter: PhotosModuleInput {
	func set(currentFriendId: Int) {
		self.currentFriendId = currentFriendId
	}
}

// MARK: - PhotosInteractorOutput
extension PhotosPresenter: PhotosInteractorOutput {
	func getPhotosFailed(with error: Error) {
		//
	}
	
	func gotPhotos(_ photos: [Photo]) {
		view?.set(photos: photos)
	}
}
