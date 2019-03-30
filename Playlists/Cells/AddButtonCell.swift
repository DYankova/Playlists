//
//  AddCell.swift
//  Playlists
//
//  Created by Dilyana Yankova on 15.03.19.
//  Copyright © 2019 Dilyana Yankova. All rights reserved.
//

import Foundation
import UIKit


class AddButtonCell: BaseCell {
    
    var viewController : PlaylistViewController?

    let addTaskButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Add", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func setupViews(){
        addSubview(addTaskButton)
        
        addTaskButton.addTarget(self, action:#selector(addSong), for: .touchUpInside)
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-180-[v0]-18-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: [ "v0" : addTaskButton]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-8-[v0]-8-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0" : addTaskButton]))
    }
    
    @objc func addSong(){
        viewController?.addSong()
    }
}
