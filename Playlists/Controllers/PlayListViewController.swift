//
//  ViewController.swift
//  Playlists
//
//  Created by Dilyana Yankova on 15.03.19.
//  Copyright © 2019 Dilyana Yankova. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let cellId1 = "cellId1"
    let cellId2 = "cellId2"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = UIColor.white
        
    //register all used cells
        collectionView?.register(Playlistcell.self, forCellWithReuseIdentifier: cellId1)
        collectionView?.register(SongCell.self, forCellWithReuseIdentifier: cellId2)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId1, for: indexPath)
        if indexPath.section == 1 {
            cell  = collectionView.dequeueReusableCell(withReuseIdentifier: cellId1, for: indexPath)
            
        } else if indexPath.section == 2 {
             cell =  collectionView.dequeueReusableCell(withReuseIdentifier: cellId2, for: indexPath)
        }
          return cell
    }
    
    //this method is available only when UICollectionViewDelegateFlowLayout is inherited
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //TODO expandlable for 
        return CGSize(width: view.frame.width, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 100)
    }
}
