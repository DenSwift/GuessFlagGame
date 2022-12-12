//
//  ViewController.swift
//  Guess country flag
//
//  Created by Денис  on 24.09.2022.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var gameButtonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gameButtonOutlet.layer.cornerRadius = 25
        gameButtonOutlet.layer.borderWidth = 3
        gameButtonOutlet.layer.borderColor = UIColor.black.cgColor
    }

    // MARK: - Action
    @IBAction func playButton(_ sender: Any) {
    }
    
}

