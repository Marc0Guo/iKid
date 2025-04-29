//
//  DadViewController.swift
//  iKid
//
//  Created by 郭家玮 on 4/29/25.
//

import UIKit

class DadViewController: UIViewController {

    @IBOutlet weak var jokeLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    var showingPunchline = false

    override func viewDidLoad() {
        super.viewDidLoad()
        jokeLabel.text = "Why did Software Engineers get excited about 404 error?"
        nextButton.setTitle("Next", for: .normal)
        nextButton.tintColor = UIColor.systemYellow
        nextButton.setTitleColor(.white, for: .normal)
    }

    @IBAction func nextButtonTapped(_ sender: UIButton) {
        if showingPunchline {
            jokeLabel.text = "Why did Software Engineers get excited about 404 error?"
            nextButton.setTitle("Next", for: .normal)
            nextButton.tintColor = UIColor.systemYellow
        } else {
            jokeLabel.text = "Finally, a \"work-life balance\"!"
            nextButton.setTitle("Back", for: .normal)
            nextButton.tintColor = UIColor.systemOrange
        }
        showingPunchline.toggle()
    }
}
