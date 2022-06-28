//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    var storybrain = StoryBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storybrain.newUI(cD: storybrain.choiceDestination, choice1Button, choice2Button, storyLabel: storyLabel)
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        var a = sender.currentTitle!
        var destination = storybrain.newDest(title: a)
        storybrain.newUI(cD: destination, choice1Button, choice2Button, storyLabel:storyLabel)
    }
    
    
    
}

