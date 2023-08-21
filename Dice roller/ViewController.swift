//
//  ViewController.swift
//  Dice roller
//
//  Created by DDUKK on 18/08/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dice1img: UIImageView!
    
    @IBOutlet weak var dice2img: UIImageView!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    var score: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func rolldice(_ sender: Any) {
        let firstNo = arc4random_uniform(6)
        let secondNo = arc4random_uniform(6)
        
        dice1img.image = UIImage(named: "dice"+String(firstNo))
        dice2img.image = UIImage(named: "dice"+String(secondNo))
        if firstNo == secondNo{
            score += 1
        }
        
        scoreLabel.text = String(score)
    }
}

