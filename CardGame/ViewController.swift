//
//  ViewController.swift
//  CardGame
//
//  Created by Dimitri Kirillov on 26/01/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func dealTapped(_ sender: Any) {
        
        let leftNum = Int.random(in: 2...14)
        let rightNum = Int.random(in: 2...14)
        
        rightImageView.image = UIImage(named: "card\(rightNum)")
        leftImageView.image = UIImage(named: "card\(leftNum)")
        
        if leftNum > rightNum {
            //player wins
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
            
        } else if leftNum < rightNum {
            //cpu wins
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
            
        } else {
            //tie
            leftScore += 1
            rightScore += 1
            leftScoreLabel.text = String(leftScore)
            rightScoreLabel.text = String(rightScore)
        }
    }
 
}

