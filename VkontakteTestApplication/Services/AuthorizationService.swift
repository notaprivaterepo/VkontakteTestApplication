//
//  AuthorizationService.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 26.05.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

import Foundation
import VK_ios_sdk

class AuthorizationService: NSObject {
	var vkSdkClient: VkSdkClientProtocol!
	
}

extension AuthorizationService: AuthorizationServiceProtocol {
	func login() {
		vkSdkClient.login()
	}
}

extension AuthorizationService: VKSdkDelegate {

	func vkSdkAccessAuthorizationFinished(with result: VKAuthorizationResult!) {
		//
	}
	
	func vkSdkUserAuthorizationFailed() {
		//
	}
	
	func vkSdkTokenHasExpired(_ expiredToken: VKAccessToken!) {
		//
	}
	
	func vkSdkAccessTokenUpdated(_ newToken: VKAccessToken!, oldToken: VKAccessToken!) {
		let token = newToken
	}
}
