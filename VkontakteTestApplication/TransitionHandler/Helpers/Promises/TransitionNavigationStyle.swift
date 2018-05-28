//
//  TransitionNavigationStyle.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 26.05.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

import Foundation

// MARK: TransitionNavigationStyle

/// Style for your navigation between modules
///
/// - push: Push your module to UINavigationController
/// - pop: Pop your module in UINavigationController
/// - present: Present your module in UINavigationController
enum TransitionNavigationStyle {
	case push
	case pop
	case present
	case single
}

