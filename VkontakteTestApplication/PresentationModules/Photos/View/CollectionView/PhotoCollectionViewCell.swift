//
//  PhotoCollectionViewCell.swift
//  VkontakteTestApplication
//
//  Created by John Dowland on 08.06.2018.
//  Copyright © 2018 Nikita Lezya. All rights reserved.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
	
	@IBOutlet weak var photoImageView: UIImageView!
	@IBOutlet weak var descriptionLabel: UILabel!
	@IBOutlet weak var dateLabel: UILabel!
	
	func configure(with photo: Photo) {
		
		descriptionLabel.text = photo.text
		
		if let date = photo.date {
			let formatter = DateFormatter()
			formatter.dateFormat = "dd.MM.yyyy"
			dateLabel.text = formatter.string(from: date)
		}
		
		if let urlString = photo.photoUrlString, let url = URL(string: urlString) {
			photoImageView.setImage(with: url)
		}
	}
}
