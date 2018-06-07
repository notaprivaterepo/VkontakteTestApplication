//
//  Friend.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 30.05.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

class Friend {
	var firstName: String?
	var lastName: String?
	var id: Int?
	var avatarUrlString: String?
	
	init(fromJson json: [String: Any]) {
		self.firstName = json["first_name"] as? String
		self.lastName = json["last_name"] as? String
		self.id = json["id"] as? Int
		self.avatarUrlString = json["photo_100"] as? String
	}
}
