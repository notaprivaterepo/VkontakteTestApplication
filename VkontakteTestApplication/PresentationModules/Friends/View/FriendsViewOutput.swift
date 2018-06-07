//
//  FriendsViewOutput.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 28.05.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

import Foundation

protocol FriendsViewOutput {
	func viewIsReady()
	func didSelectRow(with friendId: Int)
}
