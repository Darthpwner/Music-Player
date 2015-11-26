//
//  ViewController.swift
//  Music Player
//
//  Created by Matthew Allen Lin on 11/25/15.
//  Copyright © 2015 Matthew Allen Lin Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var relaxed: UIButton!
    
    @IBOutlet weak var energetic: UIButton!
    
    @IBOutlet weak var calming: UIButton!
    
    let playStartSong = Song.sharedInstance    //Move the constant assignment in here to prevent reinstantiating
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Plays gameplay song
        playStartSong.prepareAudios()
    playStartSong.song.play()   //Keeps getting called
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

