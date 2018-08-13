//
//  ViewController.swift
//  magic-8-ball
//
//  Created by Anastasiia ORJI on 8/13/18.
//  Copyright © 2018 Anastasiia ORJI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomImageNumber: Int = 0
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    @IBOutlet weak var ballImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonClick(_ sender: UIButton) {
        updateImage()
    }
    
    func updateImage(){
        randomImageNumber = Int(arc4random_uniform(5))
        ballImage.image = UIImage(named: ballArray[randomImageNumber])
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateImage()
    }
}

