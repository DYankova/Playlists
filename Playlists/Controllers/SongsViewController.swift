//
//  SongCell.swift
//  Playlists
//
//  Created by Dilyana Yankova on 15.03.19.
//  Copyright © 2019 Dilyana Yankova. All rights reserved.
//

import Foundation
import UIKit

class SongCell : UICollectionViewCell, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    var viewController : PlaylistViewController?

    
    let cellId = "CellId"
    let cellId1 = "cellId1"
    var isLast: Bool = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        viewController?.songCell = self
        setupViews()
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellId) //register custom UICollectionViewCell class.
    }
    
    func setupViews(){
        addSubview(collectionView)
        collectionView.register(Song.self, forCellWithReuseIdentifier: cellId1)
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        collectionView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        collectionView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal //set scroll direction to horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.backgroundColor = .white
        return cv
    }()
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId1, for: indexPath) as! Song

        cell.nameLabel.text = isLast ? viewController!.otherSongs[indexPath.item] : viewController!.songs[indexPath.item]
        cell.nameLabel.textColor = .black
        cell.nameLabel.font = UIFont.boldSystemFont(ofSize: 14)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {       
        return isLast ? viewController!.otherSongs.count : viewController!.songs.count

    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.frame.width - 20 , height: 40)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

