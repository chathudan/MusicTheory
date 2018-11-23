//
//  ScalesViewController.swift
//  MusicTheory
//
//  Created by Avinas Udayakumar on 6/29/17.
//  Copyright © 2017 Avinas Udayakumar. All rights reserved.
//

import UIKit

class ScalesViewController: UIViewController, UIScrollViewDelegate {

    //MRAK: outlets
    
    @IBOutlet weak var contentScroll: UIScrollView!
    @IBOutlet weak var contentImage: UIImageView!
    
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        self.contentScroll.minimumZoomScale = 1.0
        self.contentScroll.maximumZoomScale = 10.0
        contentScroll.bouncesZoom = false
        contentScroll.bounces = false
        
        contentScroll.delegate = self
        
        contentImage.image = UIImage(named: "scales_")

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
    
    //MARK: functions
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return self.contentImage
    }
    
}
