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
        jokeLabel.text = "Content hidden"
        jokeLabel.textColor = UIColor.white
        nextButton.setTitle("Next", for: .normal)
        nextButton.tintColor = UIColor.white
        nextButton.setTitleColor(.black, for: .normal)
        nextButton.isHidden = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        let alert = UIAlertController(
            title: "Warning",
            message: "This joke contains dark humor. Do you want to continue?",
            preferredStyle: .alert
        )

        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { _ in
            self.jokeLabel.text = "Content hidden."
            self.nextButton.isHidden = true
        }))

        alert.addAction(UIAlertAction(title: "Accept", style: .default, handler: { _ in
            self.jokeLabel.text = "What’s the Chinese version of a gap year?"
            self.nextButton.isHidden = false
        }))

        self.present(alert, animated: true, completion: nil)
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
