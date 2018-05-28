//
//  FriendsModuleInitializer.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 28.05.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

import Foundation

class FriendsModuleInitializer: NSObject {
	
	// Connect with object in storyboard
	@IBOutlet weak var friendsViewController: FriendsViewController!
	
	// MARK: - NSObject
	override func awakeFromNib() {
		FriendsConfigurator().configure(friendsViewController)
	}
}
