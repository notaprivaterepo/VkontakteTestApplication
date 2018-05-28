//
//  TransitionPromise.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 26.05.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

import UIKit

typealias TransitionPostLinkAction = () -> Void

// MARK: - TransitionPromise

class TransitionPromise<T> {
	
	// MARK: Properties
	
	private var postLinkAction: TransitionPostLinkAction?
	private var animated: Bool = true
	private var source: UIViewController
	private var destination: UIViewController
	private var type: T.Type
	private var modalPresentationStyle: UIModalPresentationStyle?
	
	// MARK: Initializers
	
	/// Initialization with source and destination
	///
	/// - Parameters:
	/// 	- source: Source UIViewController
	/// 	- destination: Destination UIViewController
	/// 	- type: ModuleInput type
	init(source: UIViewController, destination: UIViewController, type: T.Type) {
		self.source = source
		self.destination = destination
		self.type = type
	}
	
	// MARK: - Useful methods
	
	/// Configure destination ModuleInput
	///
	/// - Parameter block: destination ModuleInput config block
	func then(_ block: TransitionSetupBlock<T>) {
		
		var moduleInput: ModuleInput?
		
		if destination is UINavigationController {
			let result = (destination as? UINavigationController)?.topViewController ?? destination
			moduleInput = result.moduleInput
		} else {
			moduleInput = destination.moduleInput
		}
		
		if let moduleInput = moduleInput as? T {
			block(moduleInput)
			push()
		} else {
			fatalError("Cannot cast type '\(T.self)' to '\(moduleInput as Any)' object")
		}
	}
	
	/// Setup postLinkAction with TransitionStyle
	///
	/// - Parameter style: Your TransitionStyle
	/// - Returns: current promise
	func to(preferredTransitionStyle style: TransitionStyle) -> TransitionPromise<T> {
		postLinkAction = nil
		postLinkAction { [weak self] in
			guard let `self` = self else { return }
			switch style {
			case .navigationController(navigationStyle: let navCase):
				guard let navController = self.source.navigationController else {
					return
				}
				switch navCase {
				case .pop:
					navController.popToViewController(self.destination, animated: self.animated)
				case .present:
					navController.present(self.destination, animated: self.animated, completion: nil)
				case .push:
					navController.pushViewController(self.destination, animated: self.animated)
				case .single:
					navController.setViewControllers([self.destination], animated: self.animated)
				}
			case .present:
				if let modalPresentationStyle = self.modalPresentationStyle {
					self.destination.present(self.destination, animated: self.animated, completion: nil)
				}
				self.source.present(self.destination, animated: self.animated, completion: nil)
			}
		}
		
		return self
	}
	
	/// Set animated property
	///
	/// - Parameter animate: animated property
	/// - Returns: current promise
	func animate(_ animate: Bool) -> TransitionPromise<T> {
		self.animated = animate
		return self
	}
	
	/// Make Transition
	func push() {
		postLinkAction?()
	}
	
	/// Replace postLinkAction
	///
	/// - Parameter completion: new postLinkAction
	func postLinkAction(_ completion: @escaping TransitionPostLinkAction) {
		postLinkAction = completion
	}
	
	/// Set modalPresentationStyle property
	///
	/// - Parameter modalPresentationStyle: UIModalPresentationStyle
	/// - Returns: current promise
	func modalPresentationStyle(_ modalPresentationStyle: UIModalPresentationStyle) -> TransitionPromise<T> {
		self.modalPresentationStyle = modalPresentationStyle
		return self
	}
}
