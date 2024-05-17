//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func notePressed(_ sender: UIButton) {
        if let noteName = sender.currentTitle{
            print(noteName)
            playSound(tune: noteName)
            
        }
    }
    
    func playSound(tune:String){
        print("\(tune) played")
        guard let path = Bundle.main.url(forResource: tune, withExtension: "wav") else {return}
        do {
            player = try AVAudioPlayer(contentsOf: path)
            player?.play()
        } catch let error{
            print(error.localizedDescription)
        }
    }

}

