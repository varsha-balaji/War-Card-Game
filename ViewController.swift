//
//  ViewController.swift
//  WarCardGame
//
//  Created by Varsha Balaji on 8/14/20.
//  Copyright © 2020 Varsha Balaji. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //this is like thr variables page
    //need this IBOutlet connection to call methods on the image
    @IBOutlet weak var leftImageView: UIImageView!
    
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       
        
    }

    //When you connect a function do it here
    //touch up inside means a basic tap
    @IBAction func dealTapped(_ sender: Any) {
        
        //does not print in app prints in console in xcode
            //print("Deal Tapped")
        
        //.image changes the image(same thing as going to the image tag physically and changing the image)
        //spaces between equal signs matters(needs to be equal)
        //.named chnages the image to the image named the string
        //CREATING BRAND NEW UIIMAGE OBJECT
            //leftImageView.image = UIImage(named: "card5")
            //rightImageView.image = UIImage(named: "card14")
        
        //creates a randomized number between 2 and 14
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        //Updates image views
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        if leftNumber > rightNumber{
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }
        else if leftNumber < rightNumber{
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        else{
            
        }
        
    }
    
}

