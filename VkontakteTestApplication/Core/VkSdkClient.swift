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
	
	private let permissions = ["friends"]
	
	func wakeUpSession(completionHandler: @escaping (Bool) -> Void) {
		VKSdk.wakeUpSession(permissions) { (state, _) in
			completionHandler(state == VKAuthorizationState.authorized)
		}
	}
	
	func authorize() {
		VKSdk.authorize(permissions)
	}
	
	func getFriendsList() {
//		VKApi.friends().get().execute(resultBlock: { (response) in
//			response?.json
//		}, errorBlock: <#T##((Error?) -> Void)!##((Error?) -> Void)!##(Error?) -> Void#>)
	}
}

