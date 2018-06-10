//
//  CacheManager.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 10.06.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

import UIKit

class CacheManager {
	private let imageCache = NSCache<NSString, UIImage>()
	
	func image(forKey key: String) -> UIImage? {
		return imageCache.object(forKey: key as NSString)
	}
	
	func setImage(_ image: UIImage, forKey key: String) {
		imageCache.setObject(image, forKey: key as NSString)
	}
	
}
