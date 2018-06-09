//
//  PhotosInteractorOutput.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 04.06.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

import Foundation

protocol PhotosInteractorOutput {
	func getPhotosFailed(with error: Error)
	func gotPhotos(_ photos: [Photo])
}
