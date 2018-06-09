//
//  FriendTableViewCell.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 31.05.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

import UIKit

class FriendTableViewCell: UITableViewCell {

	@IBOutlet weak var firstNameLabel: UILabel!
	@IBOutlet weak var lastNameLabel: UILabel!
	@IBOutlet weak var avatarImageView: UIImageView!
	
	func configure(with friend: Friend) {
		firstNameLabel.text = friend.firstName
		lastNameLabel.text = friend.lastName
		
		if let urlString = friend.avatarUrlString, let url = URL(string: urlString) {
			avatarImageView.setImage(with: url)
		}
	}
}
