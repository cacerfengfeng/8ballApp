//
//  ViewController.swift
//  8 ball app
//
//  Created by steven liu on 2019-06-23.
//  Copyright © 2019 steven liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageBall: UIImageView!
    var randomButtonIndex: Int = 0
    var buttonArray = ["ball1","ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        buttonRotation()
    }

   
    @IBAction func askButton(_ sender: UIButton) {
       
            buttonRotation()
    }
    
    func buttonRotation(){
        randomButtonIndex = Int.random(in: 0 ... 4)
        imageBall.image=UIImage(named: buttonArray[randomButtonIndex])
    }
    
    
}

