//
//  HowItWorksViewController.swift
//  MusicTheory
//
//  Created by Avinas Udayakumar on 6/29/17.
//  Copyright © 2017 Avinas Udayakumar. All rights reserved.
//

import UIKit

class HowItWorksViewController: UIViewController, UIScrollViewDelegate {
    
    //MARK: Outlets
    
    @IBOutlet weak var contentScroll: UIScrollView!
    @IBOutlet weak var contentImage: UIImageView!
    @IBOutlet weak var btnNextPrevious: UIButton!
    @IBOutlet weak var previousImageView: UIImageView!
    @IBOutlet weak var nextImageView: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    
    
    
    //MARK: Variable
    
    
    
    
    //MARK: LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contentScroll.delegate = self
        contentScroll.minimumZoomScale = 1.0
        contentScroll.maximumZoomScale = 10.0
        contentScroll.bounces = false
        contentScroll.bouncesZoom = false
        contentImage.image = UIImage(named: "first_page")
        btnNextPrevious.tag = 101
    }
    
    override func viewDidAppear(_ animated: Bool) {
        // Disable swipe navigation
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // Enable swipe navigation
        navigationController?.interactivePopGestureRecognizer?.isEnabled = true
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    //MARK: Functions
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return self.contentImage
    }
    
    
    //function for to display pages
    func displayPages() {
        //define the button tag
        switch btnNextPrevious.tag {
        case 101:
            btnNextPrevious.tag = 102
            contentScroll.contentOffset = CGPoint(x: 0, y: 0)
            contentScroll.setZoomScale(0, animated: true)
            contentImage.image = UIImage(named: "second_page")
            lblTitle.text = "Previous"
            previousImageView.isHidden = false
            nextImageView.isHidden = true
        case 102:
            btnNextPrevious.tag = 101
            contentScroll.setZoomScale(0, animated: true)
            contentScroll.contentOffset = CGPoint(x: 0, y: 0)
            contentImage.image = UIImage(named: "first_page")
            lblTitle.text = "Next"
            previousImageView.isHidden = true
            nextImageView.isHidden = false
        default:
            print("Nothing to view")
        }
    }
    
    
    //MARK: Action
    
    @IBAction func pressedNexOrPrevious(_ sender: Any) {
        displayPages()
    }
    
}
