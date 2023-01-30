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
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        updateInterface()

    }

    @IBAction func choiceMade(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        var choice = storyBrain.nextStory(userChoice: userAnswer)
        storyLabel.text = storyBrain.stories[choice].title
        choice1Button.setTitle(storyBrain.stories[choice].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[choice].choice2, for: .normal) }

    }
//     func updateInterface(){
//         storyLabel.text = storyBrain.stories[0].title
//         choice1Button.setTitle(storyBrain.stories[0].choice1, for: .normal)
//         choice2Button.setTitle(storyBrain.stories[0].choice2, for: .normal)
//
//}

