//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation
import UIKit
struct StoryBrain{
    let arr = [Story(
        title: "You feel depressed about love and make decision to go outside, you see your friend who is not close",
        choice1: "Say hello", choice1Destination: 2,
        choice2: "It is better to not talk", choice2Destination: 1
    ),
    Story(
        title: "You walked down to the lake and see your love there",
        choice1: "Watch her/him", choice1Destination: 7,
        choice2: "Go next to her/him", choice2Destination: 5
    ),
    Story(
        title: "She/he responds well and she/he asks how you re doing",
        choice1: "Tell about your problem", choice1Destination: 4,
        choice2: "Dont tell anything and ask how her/his life is going", choice2Destination: 3
    ),
    Story(
        title: "She/he doesnt want to talk about her/his life, wonders about your problem",
        choice1: "Tell that you are okay, there is no problem", choice1Destination: 1,
        choice2: "Tell your problem", choice2Destination: 4
    ),
    Story(
        title: "You said that you have problem with your love and you feel sad",
        choice1: "Ask opinion", choice1Destination: 6,
        choice2: "Say goodbye", choice2Destination: 1
    ),
    Story(
        title: "Tell that you are sad and you feel exhausted",
        choice1: "She/he seems busy and doesnt care you", choice1Destination: 8,
        choice2: "She/he wants to talk to you and apologizes", choice2Destination: 9
    ),
    Story(
        title: "She/he doesnt care at all, you feel worse now",
        choice1: "Say goodbye, go back to your house", choice1Destination: 0,
        choice2: "Say goodbye, go somewhere else", choice2Destination: 1
    ),
    Story(
        title: "She/he realizes that you re there",
        choice1: "Go next to her/him", choice1Destination: 5,
        choice2: "Dont talk and go back to your home", choice2Destination: 0
    ),
    Story(
        title: "Tell that you re done",
        choice1: "Go to your house", choice1Destination: 0,
        choice2: "End", choice2Destination: 0
    ),
    Story(
        title: "You listen and he/she doesnt want to try to solve any problem",
        choice1: "Go to your house", choice1Destination: 0,
        choice2: "Keep silence", choice2Destination: 8
    ),
    
    ]

    var choiceDestination = 0
    mutating func newDest(title:String)->Int{
        if arr[choiceDestination].choice1 == title{
            choiceDestination = arr[choiceDestination].choice1Destination
            return choiceDestination
        }else if arr[choiceDestination].choice2 == title{
            choiceDestination = arr[choiceDestination].choice2Destination
            return choiceDestination
        }else{
            return 0
        }
    }
    
    func newUI(cD:Int,_ sender1:UIButton,_ sender2: UIButton,storyLabel: UILabel!){
        storyLabel.text = arr[cD].storytitle
        storyLabel.adjustsFontSizeToFitWidth = true
        storyLabel.numberOfLines = 8
        sender1.setTitle(arr[cD].choice1, for: UIControl.State.normal)
        sender2.setTitle(arr[cD].choice2, for: UIControl.State.normal)
    }
    
}
