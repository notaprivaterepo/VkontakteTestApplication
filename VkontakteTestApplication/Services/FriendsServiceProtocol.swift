//
//  FriendsServiceProtocol.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 05.06.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

import Foundation

protocol FriendsServiceProtocol {
	func getFriendsList(completionHandler: @escaping ([Friend], Error?) -> Void)
}
