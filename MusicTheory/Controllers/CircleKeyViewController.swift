//
//  DefaultNonRotatingViewController.swift
//  CircleMenuDemo
//
//  Created by Shoaib Ahmed on 12/2/16.
//  Copyright © 2016 Kindows Tech Solutions. All rights reserved.
//

import UIKit

class CircleKeyViewController: UIViewController {
    
    //MARK: outlets
    
    @IBOutlet weak var circleKeyView: UIView!
    @IBOutlet weak var centerRoundView: RoundView!
    
    
    
    //MARK: Variables
    var keyImagesArray: [String] = ["c", "c#", "db", "d", "d#", "eb", "e", "f", "f#", "gb", "g", "g#", "ab", "a", "a#", "bb", "b"]
    var keyTagSend: Int = 0
    
    var circle: Circle?
    
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animateRoundedCenterView()
        animateRoundedKeyView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        if circle == nil {
            prepareNonRotatingCircleMenu()
            print("Just Created")
        } else{
            print("Already Created at Parent")
        }
    }
    
    
    func prepareNonRotatingCircleMenu() {
        // Create circle
        let frame = CGRect(x: 0, y: 0, width: circleKeyView.frame.size.width, height: circleKeyView.frame.size.width)
        circle = Circle(with: frame, numberOfSegments: 17, ringWidth: 60.0, isRotating: false)
        
        // Set dataSource and delegate
        circle?.dataSource = self
        circle?.delegate = self
        
        // Position and customize
        circle?.center = circleKeyView.center
        
        // Add to view
        self.view.addSubview(circle!)
        centerRoundView.clipsToBounds = true
        
        // NOTE: Do not add overlay for non-rotating circle
    }
    
    
    //MARK: Functions
    
    //creating a function for load images when the button is pressed
    func openKeyViewController(){
        
        let storyBoard: UIStoryboard = UIStoryboard(name: Constants.StoryBoardID.MainStoryBoardID, bundle: nil)
        let viewVC = storyBoard.instantiateViewController(withIdentifier: Constants.viewControllersID.KeyDetailsViewController) as! KeysDetailsViewController
        viewVC.keyTagReceived = keyTagSend
        self.navigationController?.pushViewController(viewVC, animated: true)
    }
    
    //animations for rounded key views
    func animateRoundedCenterView(){
        
        centerRoundView.transform = __CGAffineTransformMake(0, 0, 0, 0, 0, 0)
        
        UIView.animate(withDuration: 2, delay: 0.5, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
            
            self.centerRoundView.transform = CGAffineTransform.identity
            
        }, completion: nil)
    }
    
    
    func animateRoundedKeyView(){
        
        UIView.animate(withDuration: 1.0, delay: 0.5, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseInOut, animations: {
            
            self.circleKeyView?.transform = CGAffineTransform.identity
            
        }, completion: nil)
    }
}


extension CircleKeyViewController: CircleDelegate, CircleDataSource {
    
    func circle(_ circle: Circle, didMoveTo segment: Int, thumb: CircleThumb) {
        //        let alert = UIAlertController(title: "Selected", message: "Item with tag: \(segment)", preferredStyle: UIAlertControllerStyle.alert)
        //        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel, handler: nil))
        //        self.present(alert, animated: true, completion: nil)
        
        switch segment {
        case 0:
            print("First chord")
            keyTagSend = segment
            openKeyViewController()
        case 1:
            print("Second Chord")
            keyTagSend = segment
            openKeyViewController()
        case 2:
            print("3rd Chord")
            keyTagSend = segment
            openKeyViewController()
        case 3:
            print("4th Chord")
            keyTagSend = segment
            openKeyViewController()
        case 4:
            keyTagSend = segment
            openKeyViewController()
        case 5:
            keyTagSend = segment
            openKeyViewController()
        case 6:
            keyTagSend = segment
            openKeyViewController()
        case 7:
            keyTagSend = segment
            openKeyViewController()
        case 8:
            keyTagSend = segment
            openKeyViewController()
        case 9:
            keyTagSend = segment
            openKeyViewController()
        case 10:
            keyTagSend = segment
            openKeyViewController()
        case 11:
            keyTagSend = segment
            openKeyViewController()
        case 12:
            keyTagSend = segment
            openKeyViewController()
        case 13:
            keyTagSend = segment
            openKeyViewController()
        case 14:
            keyTagSend = segment
            openKeyViewController()
        case 15:
            keyTagSend = segment
            openKeyViewController()
        case 16:
            keyTagSend = segment
            openKeyViewController()
            
        default:
            let alert = UIAlertController(title: "Keys", message: "There is no Key Details to Display", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    }
    
    func circle(_ circle: Circle, iconForThumbAt row: Int) -> UIImage {
        return UIImage(named: keyImagesArray[row])!
        
    }
    
}

