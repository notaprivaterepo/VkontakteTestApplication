//
//  UIImageView+DownloadImage.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 30.05.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

import UIKit

extension UIImageView {
	func setImage(with url: URL) {
		URLSession.shared.dataTask(with: url) { data, _, _ in
			DispatchQueue.main.async {
				if let data = data {
					self.image = UIImage(data: data)
				}
			}
			}.resume()
	}
}
