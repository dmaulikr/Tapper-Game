//
//  ViewController.swift
//  Tapper
//
//  Created by Soeng Saravit on 5/21/17.
//  Copyright © 2017 Soeng Saravit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tapperImage: UIImageView!
    @IBOutlet weak var playButton: UIButton!

    @IBOutlet weak var inputTextField: UITextField!
    
    @IBOutlet weak var tabLabel: UILabel!
    
    @IBOutlet weak var tabButton: UIButton!
    
    var maxTab:Int?
    var currentTab:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func tabButtonClick(_ sender: Any) {
        currentTab += 1
        if currentTab <= maxTab! {
            tabLabel.text = "\(currentTab) Tabs"
        }else{
            isGameStart(b: false)
            currentTab = 0
            inputTextField.text = ""
            tabLabel.text = "0 Tab"
        }
    }
    @IBAction func playButtonClick(_ sender: Any) {
        if inputTextField.text != nil && inputTextField.text != "" {
             maxTab = Int(inputTextField.text!)
            isGameStart(b: true)
        }
       
    }
    
    func isGameStart(b:Bool){
        
        tabButton.isHidden = !b
        tabLabel.isHidden = !b
        
        tapperImage.isHidden = b
        inputTextField.isHidden = b
        playButton.isHidden = b
        
    }
}

