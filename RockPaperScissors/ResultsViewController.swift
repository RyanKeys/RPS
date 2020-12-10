//
//  ResultsViewController.swift
//  RockPaperScissors
//
//  Created by Adriana González Martínez on 11/25/19.
//  Copyright © 2019 Adriana González Martínez. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    var userSelection : GameOption!
    
    //TODO: Set up an outlet for the label
    
    @IBOutlet weak var resultPrompt: UILabel!
    @IBOutlet weak var resultImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let randomOption = GameOption.init()
        
        switch randomOption {
        case .rock:
            resultImage.image = UIImage(named: "rock")
        case .paper:
            resultImage.image = UIImage(named: "paper")
        case .scissors:
            resultImage.image = UIImage(named: "scissors")
        }
        
        //TODO: Depending on the result, show the legend "You won", "You lost", "It's a tie" in the label
        resultPrompt.text = "\(randomOption)"
        
        if userSelection.unsafelyUnwrapped == randomOption.weakness {
            resultPrompt.text = "You win!"
        }
        else if userSelection.weakness == randomOption {
            resultPrompt.text = "You lose!"
        }
        else {
            resultPrompt.text = "It's a draw!"
        }
    
    }
    
}
