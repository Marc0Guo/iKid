//
//  DarkViewController.swift
//  iKid
//
//  Created by 郭家玮 on 4/29/25.
//

import UIKit

class DarkViewController: UIViewController {
    

    @IBOutlet weak var jokeLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    var showingPunchline = false

    override func viewDidLoad() {
        super.viewDidLoad()
        jokeLabel.text = "What’s the Chinese version of a gap year?"
        jokeLabel.textColor = UIColor.white
        nextButton.setTitle("Next", for: .normal)
        nextButton.tintColor = UIColor.white
        nextButton.setTitleColor(.black, for: .normal)
    }

    @IBAction func nextButtonTapped(_ sender: UIButton) {
        if showingPunchline {
            jokeLabel.text = "What’s the Chinese version of a gap year?"
            nextButton.setTitle("Next", for: .normal)
        } else {
            jokeLabel.text = "Sleeping 6 hours instead of 5."
            nextButton.setTitle("Back", for: .normal)
        }
        showingPunchline.toggle()
    }
}
