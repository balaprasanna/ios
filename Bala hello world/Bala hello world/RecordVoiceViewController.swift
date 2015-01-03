//
//  RecordVoiceViewController.swift
//  Bala hello world
//
//  Created by Prasanna V on 28/12/14.
//  Copyright (c) 2014 nus. All rights reserved.
//

import UIKit
import AVFoundation

class RecordVoiceViewController: UIViewController , AVAudioRecorderDelegate{
    
    var audioRecorder:AVAudioRecorder!
    var recordedAudio :RecordedAudio!
    
    @IBOutlet weak var recordingInProgress: UILabel!
    
    @IBOutlet weak var outlet_btnStopRecorder: UIButton!
    
    @IBOutlet weak var outlet_btnStartRecorder: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(animated: Bool) {
        // TO DO : hide the stop button when the app loads and view starts appearing
        outlet_btnStopRecorder.hidden = true
        
        // TO DO : enable the record button
        outlet_btnStartRecorder.enabled = true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnRecord(sender: UIButton) {
     // To DO : set the text to "Recording in progress"
        recordingInProgress.hidden = false
        
     // TO DO : enable the stop button for the recorder
        outlet_btnStopRecorder.hidden = false
     
     // TO DO : disable the record button
        outlet_btnStartRecorder.enabled = false
        
     //       : start record the audio
        println("in audio event handler")
        let dirPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as String
        
        let currentDateTime = NSDate()
        let formatter = NSDateFormatter()
        formatter.dateFormat = "ddMMyyyy-HHmmss"
        let recordingName = formatter.stringFromDate(currentDateTime)+".wav"
        let pathArray = [dirPath, recordingName]
        let filePath = NSURL.fileURLWithPathComponents(pathArray)
        println(filePath)
        
        var session = AVAudioSession.sharedInstance()
        session.setCategory(AVAudioSessionCategoryPlayAndRecord, error: nil)
        
        
        audioRecorder = AVAudioRecorder(URL: filePath, settings: nil, error: nil)
        // delegate to audio Recorder delegate
        audioRecorder.delegate = self

        audioRecorder.meteringEnabled = true
        audioRecorder.prepareToRecord()
        audioRecorder.record()

        
    }
    func audioRecorderDidFinishRecording(recorder: AVAudioRecorder!, successfully flag: Bool) {
        if flag{
            
            
            // save the recorded audio
            recordedAudio = RecordedAudio()
           recordedAudio.filePathUrl = recorder.url
            recordedAudio.title = recorder.url.lastPathComponent
            // move the seague to next view
        self.performSegueWithIdentifier("startRecorderSeg", sender: recordedAudio)
                
        }
        else
        {
            println("Problem with recorder")
            // TO DO : hide the stop button when the app loads and view starts appearing
            outlet_btnStopRecorder.hidden = true
            // TO DO : enable the record button
            outlet_btnStartRecorder.enabled = true

        }
        }
    @IBAction func btnStopRecorder(sender: UIButton) {
        // TO DO : Hide the text (recordingInProgress) - ""
        recordingInProgress.hidden = true
        // TO DO : Hide the stop botton for the recorder
        outlet_btnStopRecorder.hidden = true
        // stoping audio recorder
        audioRecorder.stop()
        var audioSession = AVAudioSession.sharedInstance()
        audioSession.setActive(false, error: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
       if segue.identifier == "startRecorderSeg"{
        let playSoundVC : PlaySoundsViewController = segue.destinationViewController as PlaySoundsViewController
        playSoundVC.receivedAudio = sender as RecordedAudio
        }
    }
}

