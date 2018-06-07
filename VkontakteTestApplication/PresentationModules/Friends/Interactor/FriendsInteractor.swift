//
//  FriendsInteractor.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 28.05.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

import Foundation

class FriendsInteractor {
	weak var output: FriendsInteractorOutput?
	var friendsService: FriendsServiceProtocol!
}

// MARK: - FriendsInteractorInput
extension FriendsInteractor: FriendsInteractorInput {
	func getFriendsList() {
		friendsService.getFriendsList { [weak self] (friends, error) in
			
			if let error = error {
				self?.output?.getFriendsListFailed(with: error)
			} else {
				self?.output?.gotFriendsList(friends)
			}
		}
	}
}
