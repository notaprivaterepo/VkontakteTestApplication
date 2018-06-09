//
//  PhotosInteractor.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 04.06.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

import Foundation

class PhotosInteractor {
	var output: PhotosInteractorOutput!
	var photoService: PhotoServiceProtocol!
}

// MARK: - PhotosInteractorInput
extension PhotosInteractor: PhotosInteractorInput {
	func getPhotos(for userId: Int) {
		photoService.getPhotos(for: userId) { [weak self] (photos, error) in
			if let error = error {
				self?.output?.getPhotosFailed(with: error)
			} else {
				self?.output?.gotPhotos(photos)
			}
		}
	}
}
