//
//  Playlist.cell.swift
//  Playlists
//
//  Created by Dilyana Yankova on 15.03.19.
//  Copyright © 2019 Dilyana Yankova. All rights reserved.
//


import Foundation
import UIKit

class Playlistcell : BaseCell{
  
   
    
    let nameLabel : UILabel = {
        let label = UILabel()
        label.text = "Task"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor  = UIColor.purple
        return label
        
    }()
    
    let delButton: UIButton = {
        let button = UIButton()
        button.setTitle("X", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    override  func setupViews(){
        addSubview(nameLabel)
        addSubview(delButton)
        delButton.addTarget(self, action:#selector(deleteTask), for: .touchUpInside)
        //add spacings
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-8-[v0]-18-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0" : nameLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-8-[v0]-18-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0" : nameLabel]))
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-8-[v0]-[v1(150)]-8-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0" : nameLabel, "v1" : delButton]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-8-[v0]-8-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0" : delButton]))
    }
    
//    @objc func deleteTask(){
//        viewController?.deleteTask(taskName: nameLabel.text!)
//
//    }
}
