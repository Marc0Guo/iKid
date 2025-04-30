//
//  KnockViewController.swift
//  iKid
//
//  Created by 郭家玮 on 4/29/25.
//

import UIKit

class KnockViewController: UIViewController {

    @IBOutlet weak var jokeLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!

    let jokeLines = [
        "Knock knock!",
        "Who’s there?",
        "Xcode.",
        "Xcode who?",
        "Xcode compiling… \n Estimated time remaining: Unknown.",
        "Build failed. Please clean and rebuild.",
        "Warning: This joke requires iOS 20.5 or later."
    ]

    var currentLineIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        jokeLabel.text = jokeLines[0]
        nextButton.setTitle("Next", for: .normal)
    }

    @IBAction func nextButtonTapped(_ sender: UIButton) {
        currentLineIndex += 1

        if currentLineIndex < jokeLines.count {
            jokeLabel.text = jokeLines[currentLineIndex]

            if currentLineIndex == jokeLines.count - 1 {
                nextButton.setTitle("Restart", for: .normal)
            }
        } else {
            currentLineIndex = 0
            jokeLabel.text = jokeLines[0]
            nextButton.setTitle("Next", for: .normal)
        }
    }
}
