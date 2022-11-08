//
//  ViewController.swift
//  TEST
//
//  Created by Alexa Mendoza on 11/6/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = -1
    var messageNumber = -1
    var soundNumber = -1
    let totalNumberOfImages = 9
    let totalNumberOfSounds = 6
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func playSound (name: String) {
        if let sound = NSDataAsset(name: name) {
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("🤬 ERROR: \(error.localizedDescription)Could not initialize AVAudioPlayer object.")
            }
        } else {
            print("🤬 ERROR: Could not read data from file sound0")
        }
    }
    
    @IBAction func pressButton(_ sender: UIButton) {
       var messages = ["You Are Awesome!",
                        "You Are Great!",
                        "You Are Fantastic!",
                        "Fabulous? That's You!",
                        "When the Genious Bar Needs Help, They Call You!",
                        "You've Got The Design Skills of Jony Ive"]
        
        var newMessageNumber: Int
        repeat {
            newMessageNumber = Int.random(in: 0...messages.count-1)
        } while messageNumber == newMessageNumber
        messageNumber = newMessageNumber
        messageLabel.text = messages[messageNumber]
        
        var newImageNumber: Int
        repeat {
            newImageNumber = Int.random(in: 0...totalNumberOfImages)
        } while imageNumber == newImageNumber
        imageNumber = newImageNumber
        imageView.image = UIImage (named: "image\(imageNumber)")
        
        var newSoundNumber: Int
        repeat {
            newSoundNumber = Int.random(in: 0...totalNumberOfSounds-1)
        } while soundNumber == newSoundNumber
        soundNumber = newSoundNumber
    
        playSound(name: "sound\(soundNumber)")
        
    }
    
}

