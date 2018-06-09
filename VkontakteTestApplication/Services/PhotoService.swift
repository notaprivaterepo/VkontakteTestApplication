//
//  PhotoService.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 08.06.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

import Foundation
import VK_ios_sdk

class PhotoService: PhotoServiceProtocol {
	func getPhotos(for userId: Int, completionHandler: @escaping ([Photo], Error?) -> Void) {
		VKRequest(method: "photos.getAll", parameters: ["owner_id": userId, "no_service_albums": 1, "count": 50])
			.execute(resultBlock: { (vkResponse) in
				if let jsonDict = vkResponse!.json as? [String: Any],
					let jsonArray = jsonDict["items"] as? [[String: Any]] {
					let photosArray = jsonArray.map { Photo(fromJson: $0) }
					
					completionHandler(photosArray, nil)
				}
			}) { (error) in
				completionHandler([], error)
		}
	}
}
