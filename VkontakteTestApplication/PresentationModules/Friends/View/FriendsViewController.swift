//
//  FriendsViewController.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 28.05.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

import UIKit
import VK_ios_sdk

class FriendsViewController: UIViewController {
	
	var output: FriendsViewOutput!
	
	private var friends: [Friend] = []
	private let tableViewCellHeight: CGFloat = 100.0
	
	@IBOutlet weak var tableView: UITableView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		tableView.register(UINib(nibName: "FriendTableViewCell", bundle: nil), forCellReuseIdentifier: "FriendTableViewCell")
		output.viewIsReady()
	}
}

// MARK: - UITableViewDataSource
extension FriendsViewController: UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return friends.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "FriendTableViewCell", for: indexPath) as! FriendTableViewCell
		cell.configure(with: friends[indexPath.row])
		return cell
	}
}

// MARK: - UITableViewDelegate
extension FriendsViewController: UITableViewDelegate {
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return tableViewCellHeight
	}
	
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		tableView.deselectRow(at: indexPath, animated: true)
		if let friendId = friends[indexPath.row].id {
			output.didSelectRow(with: friendId)
		}
	}
}

// MARK: - FriendsViewInput
extension FriendsViewController: FriendsViewInput {
	func set(friends: [Friend]) {
		self.friends = friends
		tableView.reloadData()
	}
}

// MARK: - ViewOutputProvider
extension FriendsViewController: ViewOutputProvider {
	var viewOutput: ModuleInput? {
		return output as? ModuleInput
	}
}
