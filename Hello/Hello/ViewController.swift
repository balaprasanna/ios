//
//  ViewController.swift
//  Hello
//
//  Created by Prasanna V on 30/10/14.
//  Copyright (c) 2014 nus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var a=0
    let longPressRec = UILongPressGestureRecognizer()
    
    
    @IBOutlet weak var lblCount: UILabel!
    @IBAction func btnClick(sender: UIButton) {
        lblCount.text="Count \(a++)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        longPressRec.addTarget(self, action: "changeCountContinuously")
        lblCount.addGestureRecognizer(longPressRec)
        lblCount.userInteractionEnabled = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func changeCountContinuously(){
     lblCount.text="Count \(a++)"
        //changeCountContinuously()
    }
    
    func longPressedView(){
        
        let tapAlert = UIAlertController(title: "Long Pressed", message: "You just long pressed the long press view", preferredStyle: UIAlertControllerStyle.Alert)
        tapAlert.addAction(UIAlertAction(title: "OK", style: .Destructive, handler: nil))
        self.presentViewController(tapAlert, animated: true, completion: nil)
    }

}

