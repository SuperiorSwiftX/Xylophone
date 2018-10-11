//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var audioPlayer : AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        playTone(tagID: sender.tag)
    }
    
    func playTone(tagID : Int) {
        let soundPlay = Bundle.main.url(forResource: "note\(tagID)", withExtension: "wav")
       
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundPlay!)
            
        } catch {
            print (error)
            
        }
        
        audioPlayer.play()
       
    }
}
    
  



