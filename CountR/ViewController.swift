//
//  ViewController.swift
//  CountR
//
//  Created by Benjamin Wilcox on 2/23/17.
//  Copyright © 2017 Benjamin Wilcox. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CounterLabel: UILabel!
    @IBOutlet weak var IncrementButton: UIButton!
    @IBOutlet weak var DecrementButton: UIButton!
    @IBOutlet weak var ClearButton: UIButton!
    
    var brain: CounterBrain!
    
    override func viewDidLoad() {
        brain = CounterBrain(initialCount: 10000)
        CounterLabel.text = "\(brain.count)"
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /**
     * Handle when a Count button is
     * is clicked
     */
    @IBAction func countButtonClicked(_ sender: UIButton) {
        if (sender.tag == 100) {
            brain.clear()
        } else if (sender.tag == 110) {
            brain.increment()
        } else if (sender.tag == 120) {
            brain.decrement()
        }
        CounterLabel.text = "\(brain.count)"
    }

}

