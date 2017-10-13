//
//  ViewController.swift
//  funFacts
//
//  Created by Rohit Devnani on 30/5/17.
//  Copyright © 2017 Rohit Devnani. All rights reserved.
//  Teacher - Pasan

import UIKit
import SwiftRandom


class ViewController: UIViewController {

   
    @IBOutlet weak var funFactLabel: UILabel! // Connecting Label
    
    @IBOutlet weak var funFactButton: UIButton! // Connecting Button again to change the color according to background color
    
    let factProvider = FactProvider() // To display and connect fact provider file facts
    let colorProvider = BackgroundColorProvider() // To display different color and connect background color file
    
    override func viewDidLoad() {
        super.viewDidLoad()

    funFactLabel.text = factProvider.randomFact()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func showFact(){ // Connecting button here
        
        funFactLabel.text =  factProvider.randomFact() // Support label
        
        let randomColor = Randoms.randomColor()
       // let randomColor = colorProvider.randomColor() //Support Color
        
        view.backgroundColor = randomColor //Random Color
        
        funFactButton.tintColor = randomColor // to let the button be tint color object NOT the text color object---
    
    }
    
} 

