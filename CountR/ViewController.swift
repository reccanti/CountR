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
    
    var count:Int = 0 {
        didSet {
            if (count > 999) {
                count = 999
            } else if (count < 0) {
                count = 0
            }
        }
    };
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CounterLabel.text = "\(count)"
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
            count = 0
        } else if (sender.tag == 110) {
            count += 1
        } else if (sender.tag == 120) {
            count -= 1
        }
        CounterLabel.text = "\(count)"
    }

}

