//
//  PlaySoundsViewController.swift
//  Bala hello world
//
//  Created by Prasanna V on 30/12/14.
//  Copyright (c) 2014 nus. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    var audioPlayer : AVAudioPlayer!
    var receivedAudio :RecordedAudio!
    var audioEngine:AVAudioEngine!
    var audioFile:AVAudioFile!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        
//        if var filePath = NSBundle.mainBundle().pathForResource("movie_quote",
//            ofType:"mp3")
//        {
//           var fileUrl = NSURL.fileURLWithPath(filePath)
//            
//          
//            println(fileUrl)
//
//        }
//        else
//        {
//            println("Error in file path")
//        }
        audioPlayer = AVAudioPlayer(contentsOfURL: receivedAudio.filePathUrl, error: nil)
        audioPlayer.enableRate = true
     
        audioEngine = AVAudioEngine()
        audioFile = AVAudioFile(forReading: receivedAudio.filePathUrl, error: nil)
               // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnPlaySlowly(sender: UIButton) {
        if audioPlayer.playing
        {
            println("please wait audio player is playing")
        }else
        {
            audioPlayer.rate = 0.5
            audioPlayer.currentTime = 0.0
            audioPlayer.prepareToPlay()
            audioPlayer.play()
            
        }
    }

    @IBAction func btnPlayFast(sender: UIButton) {

        if audioPlayer.playing
        {
          println("please wait audio player is playing")
        }else
        {
            audioPlayer.rate = 1.5
            audioPlayer.currentTime = 0.0
            audioPlayer.prepareToPlay()
            audioPlayer.play()
        }

    }
   
    @IBAction func btnStopPlayer(sender: UIButton) {
        audioPlayer.stop();
    }
    @IBAction func playChipMunkAudio(sender: UIButton) {
    playAudioWithVariablePitch(1000)
    }
    
    func playAudioWithVariablePitch(pitch: Float){
        audioPlayer.stop()
        audioEngine.stop()
        audioEngine.reset()
        
        var audioPlayerNode = AVAudioPlayerNode()
        audioEngine.attachNode(audioPlayerNode)
        
        var changePitchEffect = AVAudioUnitTimePitch()
        changePitchEffect.pitch = pitch
        audioEngine.attachNode(changePitchEffect)
        
        audioEngine.connect(audioPlayerNode, to: changePitchEffect, format: nil)
        audioEngine.connect(changePitchEffect, to: audioEngine.outputNode, format: nil)
        
        audioPlayerNode.scheduleFile(audioFile, atTime: nil, completionHandler: nil)
        audioEngine.startAndReturnError(nil)
        
        audioPlayerNode.play()
    }
    
    @IBAction func playDarth(sender: UIButton) {
        playAudioWithVariablePitch(-1000)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
