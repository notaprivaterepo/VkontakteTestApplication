//
//  ModuleInput.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 26.05.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

import Foundation

// MARK: - ModuleInput

protocol ModuleInput {
	
	/// Set module output for the current module
	///
	/// - Parameter mosuleOutput: moduleOutput instance
	func setModuleOutput(_ moduleOutput: ModuleOutput)
}

extension ModuleInput {
	
	func setModuleOutput(_ moduleOutput: ModuleOutput) {
	
	}
}
