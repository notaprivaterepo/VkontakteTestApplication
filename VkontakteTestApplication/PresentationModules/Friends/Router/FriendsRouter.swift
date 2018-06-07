//
//  FriendsRouter.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 28.05.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

import Foundation

class FriendsRouter: FriendsRouterInput {
	var transitionHandler: TransitionHandler!
	
	func openPhotos(with friendId: Int) {
		transitionHandler.openModuleUsingSegue("PresentPhotos", to: PhotosPresenter.self) { (moduleInput) in
			moduleInput.setModuleOutput(<#T##moduleOutput: ModuleOutput##ModuleOutput#>)
		}
	}
}
