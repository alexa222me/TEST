//
//  ViewController.swift
//  TEST
//
//  Created by Alexa Mendoza on 11/6/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var imageNumber = 0
    var messageNumber = 0
    let totalNumberOfImages = 9
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func pressButton(_ sender: UIButton) {
       var messages = ["You Are Awesome!",
                        "You Are Great!",
                        "You Are Fantastic!",
                        "Fabulous? That's You!",
                        "When the Genious Bar Needs Help, They Call You!",
                        "You've Got The Design Skills of Jony Ive"]
        
        var newMessage = messages[Int.random(in: 0...messages.count-1)]
        while  messageLabel.text == newMessage {
            newMessage = messages[Int.random(in: 0...messages.count-1)]
        }
        messageLabel.text = newMessage
        
        var newImage = UIImage(named: "image\(Int.random(in: 0...totalNumberOfImages))")
        while imageView.image == newImage {
            newImage = UIImage(named: "image\(Int.random(in: 0...totalNumberOfImages))")
        }
        imageView.image = newImage

        
    }
    
}

