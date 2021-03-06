//
//  LoginInteractorOutput.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 26.05.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

import Foundation

protocol LoginInteractorOutput: class {
	func authorizationSuccessfullyCompleted()
	func authorizationFailed(with error: Error)
}
