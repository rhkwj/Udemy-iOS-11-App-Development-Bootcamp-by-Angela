//
//  ViewController.swift
//  dicee
//
//  Created by Kim Yeon Jeong on 18/03/2018.
//  Copyright © 2018 Kim Yeon Jeong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ramdomDiceIndex1 : Int = 0
    var ramdomDiceIndex2 : Int = 0

    let diceArray = ["dice1", "dice2", "dice3","dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceiIageView1: UIImageView!
 
    @IBOutlet weak var diceiIageView2: UIImageView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func rollButtenPressed(_ sender: Any) {
        
        updateDiceImages()
    }
    
    func updateDiceImages(){
        
        ramdomDiceIndex1 = Int(arc4random_uniform(6))
        ramdomDiceIndex2 = Int(arc4random_uniform(6))
        
        diceiIageView1.image = UIImage(named:diceArray[ramdomDiceIndex1])
        diceiIageView2.image = UIImage(named:diceArray[ramdomDiceIndex2])
        
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        updateDiceImages()
    }
}

