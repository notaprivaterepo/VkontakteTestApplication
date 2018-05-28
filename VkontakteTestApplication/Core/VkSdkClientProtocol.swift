//
//  VkSdkClientProtocol.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 28.05.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

import Foundation

protocol VkSdkClientProtocol {
	func wakeUpSession(completionHandler: @escaping (Bool) -> Void) 
	func authorize()
}
