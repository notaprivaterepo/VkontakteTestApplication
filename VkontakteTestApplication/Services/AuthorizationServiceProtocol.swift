//
//  AuthorizationServiceProtocol.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 26.05.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

import Foundation

protocol AuthorizationServiceProtocol {
	func login(authorizationFinishedHandler: @escaping (Bool, Error?) -> Void)
}
