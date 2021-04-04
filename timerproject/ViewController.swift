//
//  ViewController.swift
//  timerproject
//
//  Created by erdem öden on 23.09.2020.
//  Copyright © 2020 erdem öden. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = Timer()
    var counter = 0
    @IBOutlet weak var timelabel: UILabel!
    @IBAction func buttonclicked(_ sender: Any) {
        print("clicked")
    }
    override func viewDidLoad() {
        counter = 10
        timelabel.text = "Timer: \(counter)"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerfunction), userInfo: nil, repeats: true)
        super.viewDidLoad()
        
    }
    @objc func timerfunction(){
        timelabel.text = "Time: \(counter)"
        counter-=1
        if counter==0{
            timer.invalidate()
            timelabel.text="Time Over"
            
        }
    }
        // Do any additional setup after loading the view.
    }


