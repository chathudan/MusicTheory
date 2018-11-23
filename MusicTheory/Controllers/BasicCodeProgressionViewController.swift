//
//  BasicCodeProgressionViewController.swift
//  MusicTheory
//
//  Created by Avinas Udayakumar on 6/29/17.
//  Copyright © 2017 Avinas Udayakumar. All rights reserved.
//

import UIKit

class BasicCodeProgressionViewController: UIViewController, UIScrollViewDelegate {

   
    //MARK: Outlets
    
    @IBOutlet weak var contentImage: UIImageView!
    @IBOutlet weak var contentScroll: UIScrollView!
    
    
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        contentScroll.delegate = self
        contentScroll.maximumZoomScale = 10.0
        contentScroll.bounces = false
        contentScroll.bouncesZoom = false
        
        contentImage.image = UIImage(named: "basic-chord-progressions")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    

    
    //MARK: Functions
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return self.contentImage
    }
   

}
