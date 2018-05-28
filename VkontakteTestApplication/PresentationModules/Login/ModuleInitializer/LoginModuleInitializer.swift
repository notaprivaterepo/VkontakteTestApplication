//
//  LoginModuleInitializer.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 26.05.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

import UIKit

class LoginModuleInitializer: NSObject {
	
	// Connect with object in storyboard
	@IBOutlet weak var loginViewController: LoginViewController!
	
	// MARK: - NSObject
	override func awakeFromNib() {
		LoginConfigurator().configure(loginViewController)
	}
}
