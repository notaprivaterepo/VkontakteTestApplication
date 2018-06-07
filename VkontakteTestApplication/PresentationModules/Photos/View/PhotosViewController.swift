//
//  PhotosViewController.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 04.06.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

import UIKit

class PhotosViewController: UIViewController {
	var output: PhotosViewOutput!
}

// MARK: - PhotosViewInput
extension PhotosViewController: PhotosViewInput {

}

// MARK: - ViewOutputProvider
extension PhotosViewController: ViewOutputProvider {
	var viewOutput: ModuleInput? {
		return output as? ModuleInput
	}
}
