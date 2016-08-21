//
//  ViewController.swift
//  Egg Timer
//
//  Created by Mark Miranda on 8/20/16.
//  Copyright © 2016 Mark Miranda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = Timer()
    var time = 210
    
    @IBOutlet var timeLabel: UILabel!
    
    @IBAction func playButton(_ sender: AnyObject) {
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.countdown), userInfo: nil, repeats: true)
    }

    @IBAction func pauseButton(_ sender: AnyObject) {
        pause()
    }
    
    @IBAction func minusTenButton(_ sender: AnyObject) {
        if time > 10 {
            time -= 10
            updateLabel()
        }
    }
    
    @IBAction func plusTenButton(_ sender: AnyObject) {
            time += 10
            updateLabel()
    }
    
    @IBAction func resetButton(_ sender: AnyObject) {
        time = 210
        updateLabel()
    }
    
    func pause() {
        timer.invalidate()
    }
    
    func countdown() {
        if time > 0 {
            time -= 1
            updateLabel()
        } else {
            pause()
        }
    }
    
    func updateLabel() {
        timeLabel.text = String(time)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

