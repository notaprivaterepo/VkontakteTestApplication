//
//  Photo.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 08.06.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

import Foundation

class Photo {
	var text: String?
	var date: Date?
	var photoUrlString: String?
	
	init(fromJson json: [String: Any]) {
		self.text = json["text"] as? String
		if let timeInterval = json["date"] as? TimeInterval {
			self.date = Date(timeIntervalSince1970: timeInterval)
		}
		self.photoUrlString = json["photo_807"] as? String
	}
}
