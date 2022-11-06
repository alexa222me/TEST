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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
    }

    @IBAction func pressButton(_ sender: UIButton) {
        
        messageLabel.text = "YOU ARE AWESOME!"
        imageView.image = UIImage (named: "image0")
        
        
    }
    
}

