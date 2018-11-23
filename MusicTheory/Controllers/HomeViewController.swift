//
//  HomeViewController.swift
//  MusicTheory
//
//  Created by Avinas Udayakumar on 6/29/17.
//  Copyright © 2017 Avinas Udayakumar. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    //MARK: outlets
    
    @IBOutlet weak var stackView1: UIStackView!
    @IBOutlet weak var stackView2: UIStackView!
    @IBOutlet weak var stackView3: UIStackView!
    
    
    //MARK: Variables
    
    
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // hide view on startup
        self.stackView1.alpha = 0
        self.stackView2.alpha = 0
        self.stackView3.alpha = 0
        //
        animateKeysStackView()
        animateScalesStackView()
        animateHowItWorksStackView()
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    //MARK: Button Actions
    
    @IBAction func menuButtonPressed(_ sender: UIButton){
        
        switch sender.tag {
        case 101:
            print("1st Button")
            let storyBoard: UIStoryboard = UIStoryboard(name: Constants.StoryBoardID.MainStoryBoardID, bundle: nil)
            let viewVC = storyBoard.instantiateViewController(withIdentifier: Constants.viewControllersID.KeysViewController) as! CircleKeyViewController
            self.navigationController?.pushViewController(viewVC, animated: true)
        case 102:
            let storyBoard: UIStoryboard = UIStoryboard(name: Constants.StoryBoardID.MainStoryBoardID, bundle: nil)
            let viewVC = storyBoard.instantiateViewController(withIdentifier: Constants.viewControllersID.MakingChordsViewController) as! MakingChordsViewController
            self.navigationController?.pushViewController(viewVC, animated: true)
            print("2nd Button")
        case 103:
            print("3rd Button Pressed")
            let storyBoard: UIStoryboard = UIStoryboard(name: Constants.StoryBoardID.MainStoryBoardID, bundle: nil)
            let viewVC = storyBoard.instantiateViewController(withIdentifier: Constants.viewControllersID.ScalesViewController) as! ScalesViewController
            self.navigationController?.pushViewController(viewVC, animated: true)
        case 104:
            print("4th Button Pressed")
            let storyBoard: UIStoryboard = UIStoryboard(name: Constants.StoryBoardID.MainStoryBoardID, bundle: nil)
            let viewVC = storyBoard.instantiateViewController(withIdentifier: Constants.viewControllersID.BasicChordProgressionViewController) as! BasicCodeProgressionViewController
            self.navigationController?.pushViewController(viewVC, animated: true)
        case 105:
            print("5th Button Pressed")
            let storyBoard: UIStoryboard = UIStoryboard(name: Constants.StoryBoardID.MainStoryBoardID, bundle: nil)
            let viewVC = storyBoard.instantiateViewController(withIdentifier: Constants.viewControllersID.InstrumentNotationVC) as! InstrumentNotationViewController
            self.navigationController?.pushViewController(viewVC, animated: true)
        case 106:
            print("6th Button Pressed")
            let storyBoard: UIStoryboard = UIStoryboard(name: Constants.StoryBoardID.MainStoryBoardID, bundle: nil)
            let viewVC = storyBoard.instantiateViewController(withIdentifier: Constants.viewControllersID.HowItsWorksViewController) as! HowItWorksViewController
            self.navigationController?.pushViewController(viewVC, animated: true)
        default:
            let storyBoard: UIStoryboard = UIStoryboard(name: Constants.StoryBoardID.MainStoryBoardID, bundle: nil)
            let viewVC = storyBoard.instantiateViewController(withIdentifier: Constants.viewControllersID.HomeViewController) as! HomeViewController
            self.navigationController?.pushViewController(viewVC, animated: true)
        }
    }
    
    
    //MARK: Functions
    
    //animations for home screen during view loads
    func animateKeysStackView(){
        
        stackView1.transform = CGAffineTransform(scaleX: 0, y: 0)
        
        
        // new animation
        UIView.animate(withDuration: 0.5, delay: 0.2, options: UIViewAnimationOptions.curveEaseIn, animations: {
            self.stackView1.alpha = 1.0
            self.stackView1.transform = CGAffineTransform.identity
        }) { (success) in
            // after completion
        }
    }
    
    
    func animateScalesStackView(){
        
        stackView2.transform = CGAffineTransform(scaleX: 0, y: 0)
        
        // new animation
        UIView.animate(withDuration: 0.5, delay: 0.5, options: UIViewAnimationOptions.curveLinear, animations: {
            self.stackView2.alpha = 1.0
            self.stackView2.transform = CGAffineTransform.identity
        }) { (success) in
            // after completion
        }
        
    }
    
    
    func animateHowItWorksStackView(){
        
        stackView3.transform = CGAffineTransform(scaleX: 0, y: 0)
        
        // new animation
        UIView.animate(withDuration: 0.5, delay: 0.7, options: UIViewAnimationOptions.curveLinear, animations: {
            self.stackView3.alpha = 1.0
            self.stackView3.transform = CGAffineTransform.identity
        }) { (success) in
            // after completion
        }
        
        
    }
    
    
    
    
    
    
}
