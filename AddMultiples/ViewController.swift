//
//  ViewController.swift
//  AddMultiples
//
//  Created by Brian Cueto on 8/6/16.
//  Copyright © 2016 Brian Cueto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Parameters
    let maxSum = 50
    var multiple = 0
    var newSum = 0
    var prevSum = 0
    
    //Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var multipleTxt: UITextField!
    
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var addEq: UILabel!
    
    //Interactive Methods
    @IBAction func playBtnPressed(sender: UIButton) {
        if multipleTxt.text != nil && multipleTxt.text != "" {
            logoImg.hidden = true
            playBtn.hidden = true
            multipleTxt.hidden = true
            
            addBtn.hidden = false
            addEq.hidden = false

            multiple = Int(multipleTxt.text!)!
            newEq()
        }
        
    }
    
    @IBAction func addBtnPressed(sender: UIButton) {
        if gameIsOver() {
            logoImg.hidden = false
            playBtn.hidden = false
            multipleTxt.hidden = false
            
            addBtn.hidden = true
            addEq.hidden = true
            
            multiple = 0
            newSum = 0
            prevSum = 0
        } else {
            newEq()
        }
    }
    
    //Extra Functions
    func newEq() {
        prevSum = newSum
        newSum = multiple + prevSum
        addEq.text = "\(prevSum) + \(multiple) = \(newSum)"
    }
    
    func gameIsOver() -> Bool {
        if newSum >= maxSum || multiple >= maxSum {
            return true
        } else {
            return false
        }
    }
    
    //Functionality
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

