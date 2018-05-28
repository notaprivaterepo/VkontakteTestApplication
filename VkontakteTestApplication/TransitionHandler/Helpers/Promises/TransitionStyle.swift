//
//  TransitionStyle.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 26.05.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

import Foundation

// MARK: - TransitonStyle

/// Sets the current transition period
///
/// - navigationController: will be added to a navigation controller
/// - present: will be presented
enum TransitionStyle {
	case navigationController(navigationStyle: TransitionNavigationStyle)
	case present
}
