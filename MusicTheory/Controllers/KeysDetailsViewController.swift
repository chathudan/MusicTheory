//
//  KeysDetailsViewController.swift
//  MusicTheory
//
//  Created by Avinas Udayakumar on 6/29/17.
//  Copyright © 2017 Avinas Udayakumar. All rights reserved.
//

import UIKit

class KeysDetailsViewController: UIViewController, UIScrollViewDelegate {
    
    
    //MARK: outlets
    
    @IBOutlet weak var contentImage: UIImageView!
    @IBOutlet weak var contentScroll: UIScrollView!
    @IBOutlet var navTitle: UILabel!
    
    
    //MARK: variables
    var keyTagReceived: Int = 0
    var keysImageArray: [String] = ["keys-of-c", "keys-of-c#", "keys-of-db", "keys-of-d", "keys-of-d#", "keys-of-eb", "keys-of-e", "keys-of-f", "keys-of-f#", "keys-of-gb", "keys-of-g", "keys-of-g#", "keys-of-ab", "keys-of-a", "keys-of-a#", "keys-of-bb", "keys-of-b"]
    
    
    
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadImages()
        
        //adding delegates and scroll view zoom scales
        contentScroll.delegate = self
        contentScroll.maximumZoomScale = 10.0
        contentScroll.bouncesZoom = false
        contentScroll.bounces = false
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    //MARK: Functions
    
    //function for superscript text sysmbol
    func superScriptNavTitle(title: String){
        
        let font:UIFont? = UIFont(name: Constants.ThemeFonts.SignPainterHouseScript, size:30)
        let fontSuper:UIFont? = UIFont(name: Constants.ThemeFonts.SignPainterHouseScript, size:20)
        let attString:NSMutableAttributedString = NSMutableAttributedString(string: title, attributes: [NSFontAttributeName:font!])
        attString.setAttributes([NSFontAttributeName:fontSuper!,NSBaselineOffsetAttributeName:10], range: NSRange(location:9,length:1))
        navTitle.attributedText = attString
        
    }
    
    //function for superscript unicode symbol
    func superScriptNavTitleUnicode(title: String){
        
        let font:UIFont? = UIFont(name: Constants.ThemeFonts.SignPainterHouseScript, size:30)
        let fontSuper:UIFont? = UIFont(name: Constants.ThemeFonts.SignPainterHouseScript, size:20)
        let attString:NSMutableAttributedString = NSMutableAttributedString(string: title, attributes: [NSFontAttributeName:font!])
        attString.setAttributes([NSFontAttributeName:fontSuper!,NSBaselineOffsetAttributeName:10], range: NSRange(location:9,length:1))
        navTitle.attributedText = attString
        
    }
    
    //function for noraml navigation title
    func normalNavtitleView(title: String){
        
        let font:UIFont? = UIFont(name: Constants.ThemeFonts.SignPainterHouseScript, size:30)
        let attString:NSMutableAttributedString = NSMutableAttributedString(string: title, attributes: [NSFontAttributeName:font!])
        navTitle.attributedText = attString
    }
    
    
    func loadImages(){
        
        switch keyTagReceived {
        case 0:
            contentImage.image = UIImage(named: keysImageArray[0])
            normalNavtitleView(title: "Keys of C")
        case 1:
            contentImage.image = UIImage(named: keysImageArray[1])
            superScriptNavTitle(title: "Keys of C#")
        case 2:
            contentImage.image = UIImage(named: keysImageArray[2])
            superScriptNavTitleUnicode(title: "Keys of D♭")
        case 3:
            contentImage.image = UIImage(named: keysImageArray[3])
            normalNavtitleView(title: "Keys of D")
        case 4:
            contentImage.image = UIImage(named: keysImageArray[4])
            superScriptNavTitle(title: "Keys of D#")
        case 5:
            contentImage.image = UIImage(named: keysImageArray[5])
            superScriptNavTitleUnicode(title: "Keys of E♭")
        case 6:
            contentImage.image = UIImage(named: keysImageArray[6])
            normalNavtitleView(title: "Keys of E")
        case 7:
            contentImage.image = UIImage(named: keysImageArray[7])
            normalNavtitleView(title: "Keys of F")
        case 8:
            contentImage.image = UIImage(named: keysImageArray[8])
            superScriptNavTitle(title: "Keys of F#")
        case 9:
            contentImage.image = UIImage(named: keysImageArray[9])
            superScriptNavTitleUnicode(title: "Keys of G♭")
        case 10:
            contentImage.image = UIImage(named: keysImageArray[10])
            normalNavtitleView(title: "Keys of G")
        case 11:
            contentImage.image = UIImage(named: keysImageArray[11])
            superScriptNavTitle(title: "Keys of G#")
        case 12:
            contentImage.image = UIImage(named: keysImageArray[12])
            superScriptNavTitleUnicode(title: "Keys of A♭")
        case 13:
            contentImage.image = UIImage(named: keysImageArray[13])
            normalNavtitleView(title: "Keys of A")
        case 14:
            contentImage.image = UIImage(named: keysImageArray[14])
            superScriptNavTitle(title: "Keys of A#")
        case 15:
            contentImage.image = UIImage(named: keysImageArray[15])
            superScriptNavTitleUnicode(title: "Keys of B♭")
        case 16:
            contentImage.image = UIImage(named: keysImageArray[16])
            normalNavtitleView(title: "Keys of B")
            
        default:
            let alert = UIAlertController(title: "Keys", message: "There is no Key details", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    }
    
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return self.contentImage
    }
    
    
    
}
