//
//  ViewController.swift
//  Music Player
//
//  Created by Matthew Allen Lin on 11/25/15.
//  Copyright © 2015 Matthew Allen Lin Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    var isRelaxed = false;
//    var isEnergetic = false;
//    var isCalming = false;
//   
//    @IBAction func relaxedTap(sender: AnyObject) {
//        isRelaxed = true
//        isEnergetic = false
//        isCalming = false
//    }
//    
//    
//    @IBAction func energeticTap(sender: AnyObject) {
//        isRelaxed = false
//        isEnergetic = true
//        isCalming = false
//    }
//    
//    
//    @IBAction func calmingTap(sender: AnyObject) {
//        isRelaxed = false
//        isEnergetic = false
//        isCalming = true;
//    }
    
    
    
    
    override func viewDidLoad() {
        let playStartSong = Song.sharedInstance    //Move the constant assignment in here to prevent reinstantiating
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("FUCK")
        
        //Plays gameplay song
//        if(isRelaxed) {
//            playStartSong.prepareAudiosRelaxing()
//        } else if(isEnergetic) {
//            playStartSong.prepareAudiosEnergetic()
//        } else if(isCalming){
//            playStartSong.prepareAudiosCalming()
        playStartSong.prepareAudios()
        
        playStartSong.song.play()   //Keeps getting called
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

