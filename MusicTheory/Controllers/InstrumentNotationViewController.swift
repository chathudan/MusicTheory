//
//  InstrumentNotationViewController.swift
//  MusicTheory
//
//  Created by Elegant Media on 12/6/17.
//  Copyright © 2017 Avinas Udayakumar. All rights reserved.
//

import UIKit

class InstrumentNotationViewController: UIViewController {

    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    //MARK: Functions
    
    
    
    
    //MARK: Actions
    @IBAction func pressedInstrumentButton(_ sender: UIButton) {
        
        switch sender.tag {
        case 101:
            print("guitar standard Button")
            let storyBoard: UIStoryboard = UIStoryboard(name: Constants.StoryBoardID.MainStoryBoardID, bundle: nil)
            let viewVC = storyBoard.instantiateViewController(withIdentifier: Constants.viewControllersID.GuitarStandardTuningVC) as! GuitarStandardTuningViewController
            self.navigationController?.pushViewController(viewVC, animated: true)
        case 102:
            print("guitar drop Button")
            let storyBoard: UIStoryboard = UIStoryboard(name: Constants.StoryBoardID.MainStoryBoardID, bundle: nil)
            let viewVC = storyBoard.instantiateViewController(withIdentifier: Constants.viewControllersID.GuitarDropDTuningVC) as! GuitarDropDTuningViewController
            self.navigationController?.pushViewController(viewVC, animated: true)
        case 103:
            print("bass standard Button")
            let storyBoard: UIStoryboard = UIStoryboard(name: Constants.StoryBoardID.MainStoryBoardID, bundle: nil)
            let viewVC = storyBoard.instantiateViewController(withIdentifier: Constants.viewControllersID.BassStandardTuningVC) as! BassStandardTuningViewController
            self.navigationController?.pushViewController(viewVC, animated: true)
        case 104:
            print("bass drop Button")
            let storyBoard: UIStoryboard = UIStoryboard(name: Constants.StoryBoardID.MainStoryBoardID, bundle: nil)
            let viewVC = storyBoard.instantiateViewController(withIdentifier: Constants.viewControllersID.BassDropDTuningVC) as! BassDropDTuningViewController
            self.navigationController?.pushViewController(viewVC, animated: true)
        case 105:
            print("guitar standard Button")
            let storyBoard: UIStoryboard = UIStoryboard(name: Constants.StoryBoardID.MainStoryBoardID, bundle: nil)
            let viewVC = storyBoard.instantiateViewController(withIdentifier: Constants.viewControllersID.PianoVC) as! PianoViewController
            self.navigationController?.pushViewController(viewVC, animated: true)
        default:
            print("Nothing to navigate")
        }
        
    }
    
    


}
