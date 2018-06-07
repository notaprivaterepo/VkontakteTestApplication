//
//  PhotosModuleInitializer.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 04.06.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

import Foundation

class PhotosModuleInitializer: NSObject {
	
	// Connect with object in storyboard
	@IBOutlet weak var photosViewController: PhotosViewController!
	
	// MARK: - NSObject
	override func awakeFromNib() {
		PhotosConfigurator().configure(photosViewController)
	}
}
