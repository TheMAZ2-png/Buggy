//
//  ViewController.swift
//  Buggy
//
//  Created by Chris Mazurek on 10/2/25.
//

import UIKit

class ViewController: UIViewController {

    
@IBAction func buttonTapped(_ sender: UIButton) {
    print("Method: \(#function) in file: \(#file) line: \(#line) called.")
   }

    
    func badMethod() {
        let array = NSMutableArray()

        for i in 0..<10 {
            array.insert(i, at: i)
        }

        // Go one step too far emptying the array (notice the range change):
        for _ in 0...10 {
            array.removeObject(at: 0)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        badMethod()
    }

  
}

