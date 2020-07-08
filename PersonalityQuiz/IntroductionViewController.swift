//
//  ViewController.swift
//  PersonalityQuiz
//
//  Created by admin on 5/27/20.
//  Copyright © 2020 Khanhdepgai. All rights reserved.
//

import UIKit
var currentCategoryType:Int!

class IntroductionViewController: UIViewController {

    @IBOutlet weak var buttonFly: UIButton!
    @IBOutlet weak var buttonBassketball: UIButton!
    @IBOutlet weak var buttonWaterGun: UIButton!
    @IBOutlet weak var buttonMailbox: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        switch sender {
        case buttonFly:
            gotoQuestionView(index: 1)
            break
        case buttonBassketball:
           gotoQuestionView(index: 2)
            break
        case buttonWaterGun:
           gotoQuestionView(index: 3)
            break
        case buttonMailbox:
           gotoQuestionView(index: 4)
            break
    
        default:
            break
        }
    }
    func gotoQuestionView(index:Int){
        currentCategoryType = index
        performSegue(withIdentifier:"gotoQuestionView", sender: nil)
    }
}

