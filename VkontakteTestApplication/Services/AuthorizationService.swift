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
	private let permissions = ["friends", "photos"]
	private var authorizationFinishedHandler: ((Bool, Error?) -> Void)?
}

extension AuthorizationService: AuthorizationServiceProtocol {
	
	func login(authorizationFinishedHandler: @escaping (Bool, Error?) -> Void) {
		
		self.authorizationFinishedHandler = authorizationFinishedHandler
		
		VKSdk.wakeUpSession(permissions, complete: { [weak self] (state, _) in
			if (state == VKAuthorizationState.authorized) {
				authorizationFinishedHandler(true, nil)
			} else {
				VKSdk.authorize(self?.permissions)
			}
		})
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
		// not implemented
	}
	
	func vkSdkTokenHasExpired(_ expiredToken: VKAccessToken!) {
		// not implemented
	}
}
