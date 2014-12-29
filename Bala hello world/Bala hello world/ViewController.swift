//
//  ViewController.swift
//  Bala hello world
//
//  Created by Prasanna V on 28/12/14.
//  Copyright (c) 2014 nus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingInProgress: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnRecord(sender: UIButton) {
     // To DO : set the text to "Recording in progress"
        recordingInProgress.hidden = false
     //       : start record the audio
        println("in audio event handler")
    }

    @IBAction func btnStopRecorder(sender: UIButton) {
        // TO DO : Hide the text (recordingInProgress) - ""
        recordingInProgress.hidden = true
    }
}

