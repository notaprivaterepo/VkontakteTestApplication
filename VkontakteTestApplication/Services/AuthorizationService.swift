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
	
	private var authorizationFinishedHandler: ((Bool, Error?) -> Void)?
}

extension AuthorizationService: AuthorizationServiceProtocol {
	
	func login(authorizationFinishedHandler: @escaping (Bool, Error?) -> Void) {
		
		self.authorizationFinishedHandler = authorizationFinishedHandler
		
		vkSdkClient.wakeUpSession { [weak self] isSuccess in
			if isSuccess {
				authorizationFinishedHandler(true, nil)
			} else {
				self?.vkSdkClient.authorize()
			}
		}
	}
}

extension AuthorizationService: VKSdkDelegate {
	func vkSdkAccessAuthorizationFinished(with result: VKAuthorizationResult!) {
		if result.token != nil {
			authorizationFinishedHandler?(true, nil)
		} else if let error = result.error {
			authorizationFinishedHandler?(false, error)
		}
	}
	
	func vkSdkUserAuthorizationFailed() {
		//
	}
	
	func vkSdkTokenHasExpired(_ expiredToken: VKAccessToken!) {
		//
	}
}
