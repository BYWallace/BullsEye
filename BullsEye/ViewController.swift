//
//  ViewController.swift
//  BullsEye
//
//  Created by Brett Wallace on 11/4/15.
//  Copyright © 2015 Brett Wallace. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var slider: UISlider!
    var currentValue: Int = 0
    var targetValue: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        currentValue = lroundf(slider.value)
        targetValue = 1 + Int(arc4random_uniform(100))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAlert() {
        let message = "The value of the slider is: \(currentValue)"
                    + "\nThe target value is: \(targetValue)"
        let alert = UIAlertController(title: "Hello, World", message: message, preferredStyle: .Alert)
        let action = UIAlertAction(title: "OK", style: .Default, handler: nil)
        
        alert.addAction(action)
        presentViewController(alert, animated: true, completion: nil)
    }
    
    @IBAction func sliderMoved(slider: UISlider) {
        currentValue = lroundf(slider.value)
    }
}

