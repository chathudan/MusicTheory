//
//  GuitarStandardTuningViewController.swift
//  MusicTheory
//
//  Created by Elegant Media on 12/6/17.
//  Copyright © 2017 Avinas Udayakumar. All rights reserved.
//

import UIKit

class GuitarStandardTuningViewController: UIViewController, UIScrollViewDelegate {
    
    //MARK: Outlets
    
    @IBOutlet weak var contentScroll: UIScrollView!
    @IBOutlet weak var contentImage: UIImageView!
    
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //adding delegates and scroll view zoom scales
        contentScroll.delegate = self
        contentScroll.maximumZoomScale = 10.0
        contentScroll.bouncesZoom = false
        contentScroll.bounces = false
        contentImage.image = UIImage(named: "guirtar_standard")
    }
    
    
    //MARK: Functions
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return self.contentImage
    }
    
    
    
}
