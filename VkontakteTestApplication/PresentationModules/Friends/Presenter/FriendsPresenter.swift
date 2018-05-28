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
	
}

// MARK: - FriendsViewOutput
extension FriendsPresenter: FriendsViewOutput {
	
}

// MARK: - FriendsInteractorOutput
extension FriendsPresenter: FriendsInteractorOutput {
	
}
