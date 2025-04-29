//
//  PunViewController.swift
//  iKid
//
//  Created by 郭家玮 on 4/29/25.
//

import UIKit

class PunViewController: UIViewController {

    @IBOutlet weak var jokeLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    
    var showingPunchline = false

    override func viewDidLoad() {
        super.viewDidLoad()
        jokeLabel.text = "Why did Amazon people bring ladders to office?"
        nextButton.setTitle("Next", for: .normal)
        nextButton.tintColor = UIColor.systemCyan
        nextButton.setTitleColor(.white, for: .normal)
    }

    @IBAction func nextButtonTapped(_ sender: UIButton) {
        if showingPunchline {
            jokeLabel.text = "Why did Amazon people bring ladders to office?"
            nextButton.setTitle("Next", for: .normal)
            nextButton.tintColor = UIColor.systemCyan
        } else {
            jokeLabel.text = "Because they heard the career ladder was real!"
            nextButton.setTitle("Back", for: .normal)
            nextButton.tintColor = UIColor.purple
        }
        showingPunchline.toggle()
    }
}
