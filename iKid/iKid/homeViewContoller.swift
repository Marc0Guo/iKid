//
//  homeViewContoller.swift
//  iKid
//
//  Created by 郭家玮 on 4/29/25.
//

import UIKit

class HomeViewController: UIViewController {

    
    @IBOutlet weak var jokeImageView: UIImageView!
    @IBOutlet weak var toggleButton: UIButton!
    
    var isImageShown = false

    override func viewDidLoad() {
        super.viewDidLoad()
        jokeImageView.image = UIImage(named: "Joke")
        jokeImageView.contentMode = .scaleAspectFit
        toggleButton.setTitle("What happens when Taylor meets Swift?", for: .normal)
    }

    @IBAction func showJokeImage(_ sender: UIButton) {
        if isImageShown {
            jokeImageView.image = UIImage(named: "code")
            toggleButton.setTitle("Back", for: .normal)
        } else {

            jokeImageView.image = UIImage(named: "Joke")
            jokeImageView.isHidden = false
            toggleButton.setTitle("What happens when Taylor meets Swift?", for: .normal)
        }

        isImageShown.toggle()
    }
}

