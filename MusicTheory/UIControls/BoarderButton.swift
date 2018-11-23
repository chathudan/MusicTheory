//
//  BoarderButton.swift
//  MusicTheory
//
//  Created by Avinas Udayakumar on 6/29/17.
//  Copyright © 2017 Avinas Udayakumar. All rights reserved.
//

import UIKit

@IBDesignable
class BoarderButton: UIButton {

    //customizable uibutton controls and unlocking the designable features on attribute inspector
    @IBInspectable var borderColor: UIColor = UIColor.white {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var cornerRadious: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = cornerRadious
        }
    }
    
}
