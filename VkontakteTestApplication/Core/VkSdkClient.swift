//
//  VkSdkClient.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 28.05.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

import Foundation
import VK_ios_sdk

class VkSdkClient: VkSdkClientProtocol {

	func login() {
		VKSdk.authorize(["friends"])
	}
	
	func getFriendsList() {
//		VKApi.friends().get().execute(resultBlock: { (response) in
//			response?.json
//		}, errorBlock: <#T##((Error?) -> Void)!##((Error?) -> Void)!##(Error?) -> Void#>)
	}
}

