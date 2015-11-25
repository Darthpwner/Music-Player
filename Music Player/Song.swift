//
//  Song.swift
//  Music Player
//
//  Created by Matthew Allen Lin on 11/25/15.
//  Copyright © 2015 Matthew Allen Lin Software. All rights reserved.
//

import Foundation   //Needed for dispatch_once_t
import AVFoundation //Needed to play sounds

//Singleton
class Song {
    
    var song: AVAudioPlayer = AVAudioPlayer()
    var songStarted: Bool = false
    
    class var sharedInstance: Song {
        struct Static {
            static var onceToken: dispatch_once_t = 0
            static var instance: Song? = nil
        }
        dispatch_once(&Static.onceToken) {
            Static.instance = Song()
        }
        return Static.instance!
    }
    
    func prepareAudios() {
        
        let path = NSBundle.mainBundle().pathForResource("Shut Up and Dance", ofType: "mp3")
        song = try! AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: path!))
        song.prepareToPlay()
        
        song.numberOfLoops = -1 //Makes the song play repeatedly
    }
}
