//
//  CarouselCollectionViewController.swift
//  CollectionViewCarouselExample
//
//  Created by David Wright on 5/9/20.
//  Copyright © 2020 David Wright. All rights reserved.
//

import UIKit

private let reuseIdentifier = "CarouselCell"

class CarouselCollectionViewController: UICollectionViewController {

    let numberOfCollectionViewCells = 9
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    private func setupViews() {
        title = "Carousel Collection View"

        guard let collectionView = collectionView else { fatalError() }
        //collectionView.decelerationRate = .fast // uncomment if necessary
        collectionView.collectionViewLayout = ZoomAndSnapFlowLayout()
        collectionView.contentInsetAdjustmentBehavior = .always
        self.collectionView!.register(CarouselCollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }

    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numberOfCollectionViewCells
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? CarouselCollectionViewCell else { return UICollectionViewCell() }

        // Configure the cell
    
        return cell
    }
}
