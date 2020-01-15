//
//  ViewController.swift
//  NumGuess
//
//  Created by Christopher Canales on 1/14/20.
//  Copyright © 2020 Christopher Canales. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var l = 0
    var r = 100 
    var x = 50
    
    @IBOutlet weak var textBox: UILabel!
    @IBOutlet weak var readyButton: UIButton!
    @IBOutlet weak var hButtonV: UIButton!
    @IBOutlet weak var lButtonV: UIButton!
    @IBOutlet weak var isNumButtonV: UIButton!
    @IBOutlet weak var notNumButtonV: UIButton!
    @IBOutlet weak var hmFace: UIImageView!
    @IBOutlet weak var Smiley: UIImageView!
    
    
    
    
    @IBAction func readyButtonA(_ sender: Any) {
        self.readyButton.isHidden = true
        self.isNumButtonV.isHidden = false
        self.notNumButtonV.isHidden = false
        self.hmFace.isHidden = false
        self.textBox.text = "is your number \(x)"
    }
    @IBAction func hButton(_ sender: UIButton) {
        l = x+1
        x = (l+r)/2
        self.textBox.text = "is your number \(x)"
        self.hButtonV.isHidden = true
        self.lButtonV.isHidden = true
        self.isNumButtonV.isHidden = false
        self.notNumButtonV.isHidden = false
    }
    @IBAction func lButton(_ sender: UIButton) {
        r = x-1
        x = (l+r)/2
        self.textBox.text = "is your number \(x)"
        self.hButtonV.isHidden = true
        self.lButtonV.isHidden = true
        self.isNumButtonV.isHidden = false
        self.notNumButtonV.isHidden = false
    }
    @IBAction func isNumButtonA(_ sender: UIButton) {
        self.textBox.text = "\(x) is your Number!"
        self.hButtonV.isHidden = true
        self.lButtonV.isHidden = true
        self.isNumButtonV.isHidden = true
        self.notNumButtonV.isHidden = true
        self.hmFace.isHidden = true
        self.Smiley.isHidden = false
    }
    @IBAction func notNumButtonA(_ sender: Any) {
        self.hButtonV.isHidden = false
        self.lButtonV.isHidden = false
        self.isNumButtonV.isHidden = true
        self.notNumButtonV.isHidden = true
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hButtonV.isHidden = true
        self.lButtonV.isHidden = true
        self.isNumButtonV.isHidden = true
        self.notNumButtonV.isHidden = true
        self.hmFace.isHidden = true
        self.Smiley.isHidden = true
        self.textBox.text = "Think of a number from 0-\(r)!"
        // Do any additional setup after loading the view.
    }


}

