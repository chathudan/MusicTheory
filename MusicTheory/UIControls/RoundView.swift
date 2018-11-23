//
//  RoundView.swift
//  MusicTheory
//
//  Created by Avinas Udayakumar on 6/30/17.
//  Copyright © 2017 Avinas Udayakumar. All rights reserved.
//

import UIKit

class RoundView: UIView {

    override func awakeFromNib() {
        layer.cornerRadius = frame.size.width / 2
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
         layer.cornerRadius = frame.size.width / 2
    }
    
}
