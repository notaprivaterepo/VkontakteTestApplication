//
//  PhotoServiceProtocol.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 08.06.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

import Foundation

protocol PhotoServiceProtocol {
	func getPhotos(for userId: Int, completionHandler: @escaping ([Photo], Error?) -> Void)
}
