//
//  Audio&Text.swift
//  AR Tour Guide
//
//  Created by Isha G on 2/16/20.
//  Copyright © 2020 Creative Labs. All rights reserved.
//

import Foundation
import AVFoundation

public struct Audio {
    var audioPlayer = AVAudioPlayer()
    mutating func playAudio(name: String, type: String) -> Int
    {
        
        let sound = Bundle.main.path(forResource: name, ofType: type)
        
        do
        {
            self.audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
            //audioPlayer.prepareToPlay()
            self.audioPlayer.play()
        }
        catch
        {
            print(error)
            return -1
        }
        
        return 0
    }
}


//public struct Text {
//
//}
