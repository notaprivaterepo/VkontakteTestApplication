//
//  ViewOutputProvider.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 26.05.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

import Foundation

// MARK: - ViewOutputProvider

protocol ViewOutputProvider {
	
	/// Module input for the current object
	var viewOutput: ModuleInput? { get }
}
