//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Carl-Uwe Würfel on 08.02.15.
//  Copyright (c) 2015 Carl-Uwe Würfel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var recordInProgress: UILabel!
    @IBOutlet weak var stopProgress: UIButton!
    @IBOutlet weak var recordButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        stopProgress.hidden = true
        recordButton.enabled = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func stopProgress(sender: UIButton) {
        if(recordInProgress.hidden == false) {
            recordInProgress.hidden = true
        }
    }

    @IBAction func recordButton(sender: UIButton) {
        recordInProgress.hidden = false
        stopProgress.hidden = false
        recordButton.enabled = false
        //TODO: Record the user's voice
        println("in recordAudio")
    }

}

