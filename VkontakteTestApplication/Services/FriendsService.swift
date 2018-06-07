//
//  FriendsService.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 05.06.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

import VK_ios_sdk

class FriendsService {
	
}

extension FriendsService: FriendsServiceProtocol {
	func getFriendsList(completionHandler: @escaping ([Friend], Error?) -> Void) {
		VKRequest(method: "friends.get", parameters: ["fields": "photo_100"])
			.execute(resultBlock: { (vkResponse) in
				if let jsonDict = vkResponse!.json as? [String: Any],
					let jsonArray = jsonDict["items"] as? [[String: Any]] {
					let friendsArray = jsonArray.map { Friend(fromJson: $0) }
					print(friendsArray)
					completionHandler(friendsArray, nil)
				}
			}) { (error) in
				completionHandler([], error)
		}
	}
}
