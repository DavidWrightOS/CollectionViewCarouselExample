//
//  CarouselCollectionViewCell.swift
//  CollectionViewCarouselExample
//
//  Created by David Wright on 5/9/20.
//  Copyright © 2020 David Wright. All rights reserved.
//

import UIKit

class CarouselCollectionViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupViews()
    }
    
    private func setupViews() {
        contentView.backgroundColor = .blue
    }
}
