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
	private var photos = [Photo]()
	
	@IBOutlet weak var collectionView: UICollectionView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		setupCollectionView()
		output.viewIsReady()
	}
	
	private func setupCollectionView() {
		collectionView.register(UINib(nibName: "PhotoCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "PhotoCollectionViewCell")
		collectionView.isPagingEnabled = true
	}
}

// MARK: - PhotosViewInput
extension PhotosViewController: PhotosViewInput {
	func set(photos: [Photo]) {
		self.photos = photos
		collectionView.reloadData()
	}
}

// MARK: - ViewOutputProvider
extension PhotosViewController: ViewOutputProvider {
	var viewOutput: ModuleInput? {
		return output as? ModuleInput
	}
}

// MARK: - UICollectionViewDelegate
extension PhotosViewController: UICollectionViewDelegate {
	
}

// MARK: - UICollectionViewDataSource
extension PhotosViewController: UICollectionViewDataSource {
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return photos.count
	}
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotoCollectionViewCell", for: indexPath) as? PhotoCollectionViewCell else { return UICollectionViewCell() }
		cell.configure(with: photos[indexPath.row])
		return cell
	}
}

// MARK: - UICollectionViewDelegateFlowLayout
extension PhotosViewController: UICollectionViewDelegateFlowLayout {
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		return collectionView.frame.size
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
		return 0.0
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
		return 0.0
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
		return UIEdgeInsetsMake(0.0, 0.0, 0.0, 0.0)
	}
}
