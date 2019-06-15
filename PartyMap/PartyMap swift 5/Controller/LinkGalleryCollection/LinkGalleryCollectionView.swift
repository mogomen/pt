//
//  LinkGalleryCollectionView.swift
//  PartyMap swift 5
//
//  Created by Biscuit on 6/4/19.
//  Copyright © 2019 the Biscuits. All rights reserved.
//

import UIKit

class LinkGalleryCollectionView: UICollectionView, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cells.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = dequeueReusableCell(withReuseIdentifier: LinkGalleryCollectionViewCell.reuseId, for: indexPath) as! LinkGalleryCollectionViewCell
        cell.mainImageView.image = cells[indexPath.row].mainImage
        cell.layer.masksToBounds = true
        cell.layer.cornerRadius = 6
        return cell
    }
    

    var cells = [SushiModel]()
    
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        super.init(frame: .zero, collectionViewLayout: layout)
        
        
        backgroundColor = .black
        delegate = self
        dataSource = self
        register(LinkGalleryCollectionViewCell.self, forCellWithReuseIdentifier: LinkGalleryCollectionViewCell.reuseId)
        
        translatesAutoresizingMaskIntoConstraints = false
        layout.minimumLineSpacing = Constants.galleryMinimumLineSpacing
        contentInset = UIEdgeInsets(top: 0, left: Constants.leftDistanceToView, bottom: 0, right: Constants.rightDistanceToView)
        
        
        showsHorizontalScrollIndicator = false
        showsVerticalScrollIndicator = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func set(cells: [SushiModel]) {
        self.cells = cells
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: Constants.galleryItemWidth, height: frame.height * 0.8)
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            print("one")
        }
    }
}
