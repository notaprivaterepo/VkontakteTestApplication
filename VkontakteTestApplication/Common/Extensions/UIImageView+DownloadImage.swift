//
//  UIImageView+DownloadImage.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 30.05.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

import UIKit

private var cacheManager = CacheManager()

extension UIImageView {
	func setImage(with url: URL) {
		
		if let image = cacheManager.image(forKey: url.absoluteString) {
			self.image = image
			return
		}
			
		URLSession.shared.dataTask(with: url) { [weak self] data, _, _ in
			if let data = data, let image = UIImage(data: data)  {
				cacheManager.setImage(image, forKey: url.absoluteString)
				DispatchQueue.main.async {
					self?.image = image
				}
			}
			}.resume()
	}
}
