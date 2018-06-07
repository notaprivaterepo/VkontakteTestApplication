//
//  FriendsPresenter.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 28.05.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

import Foundation

class FriendsPresenter {
	
	weak var view: FriendsViewInput?
	var interactor: FriendsInteractorInput!
	var router: FriendsRouterInput!
//	var output: FriendsModuleOutput?
}

// MARK: - FriendsViewOutput
extension FriendsPresenter: FriendsViewOutput {
	func viewIsReady() {
		interactor.getFriendsList()
	}
	
	func didSelectRow(with friendId: Int) {
		router.openPhotos(with: friendId)
	}
}

// MARK: - FriendsModuleInput
extension FriendsPresenter: FriendsModuleInput {
	
}

// MARK: - FriendsInteractorOutput
extension FriendsPresenter: FriendsInteractorOutput {
	func getFriendsListFailed(with error: Error) {
		
	}
	
	func gotFriendsList(_ friends: [Friend]) {
		view?.set(friends: friends)
	}
}
