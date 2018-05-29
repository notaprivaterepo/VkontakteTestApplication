//
//  LoginRouter.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 26.05.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

import Foundation

class LoginRouter: LoginRouterInput {
	var transitionHandler: TransitionHandler!
	
	func openFriends() {
		transitionHandler.openModuleUsingSegue("PresentFriends", to: FriendsPresenter.self) { (_) in }
	}
}
