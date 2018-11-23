//
//  MakingChordsViewController.swift
//  MusicTheory
//
//  Created by Avinas Udayakumar on 6/29/17.
//  Copyright © 2017 Avinas Udayakumar. All rights reserved.
//

import UIKit

class MakingChordsViewController: UIViewController, UIScrollViewDelegate {

    
    //MARK: outlets
    
    @IBOutlet weak var contentImage: UIImageView!
    @IBOutlet weak var contentScroll: UIScrollView!
    
    
    //MARK: variables
    
    
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        

        contentScroll.delegate = self
        contentScroll.maximumZoomScale = 10.0
        contentScroll.bouncesZoom = false
        contentScroll.bounces = false
        
        contentImage.image = UIImage(named: "making-chord")
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    //MARK: Functions
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return self.contentImage
    }
    
   
}
