//
//  PhotosModuleInput.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 07.06.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

import Foundation

protocol PhotosModuleInput: ModuleInput {
	func set(currentFriendId: Int)
}
