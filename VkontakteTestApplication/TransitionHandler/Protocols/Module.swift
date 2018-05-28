//
//  Module.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 26.05.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

import UIKit

// MARK: - Module

protocol Module {
	
	/// ModuleInput type
	associatedtype Input
	
	/// Instantiate transition handler
	///
	/// - Returns: UIViewController instance
	static func instantiateTransitionHandler() -> UIViewController
}
