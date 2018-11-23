//
//  PianoViewController.swift
//  MusicTheory
//
//  Created by Elegant Media on 12/6/17.
//  Copyright © 2017 Avinas Udayakumar. All rights reserved.
//

import UIKit

class PianoViewController: UIViewController, UIScrollViewDelegate {

    //MARK: Outlets
    
    @IBOutlet weak var contentImage: UIImageView!
    @IBOutlet weak var contentScroll: UIScrollView!
    
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        //adding delegates and scroll view zoom scales
        contentScroll.delegate = self
        contentScroll.maximumZoomScale = 10.0
        contentScroll.bouncesZoom = false
        contentScroll.bounces = false
        contentImage.image = UIImage(named: "piano")
    }
    
    
    //MARK: Functions
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return self.contentImage
    }
    
    

    
    
}
