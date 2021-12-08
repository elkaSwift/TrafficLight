//
//  ViewController.swift
//  TrafficLight
//
//  Created by Елисей Мищенко on 08.12.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        startButton.layer.cornerRadius = 10
        startButton.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        redView.layer.cornerRadius = 80
        redView.alpha = 0.5
        yellowView.layer.cornerRadius = 80
        yellowView.alpha = 0.5
        greenView.layer.cornerRadius = 80
        greenView.alpha = 0.5
    }

    @IBAction func startPressed() {
        if redView.alpha == 1 {
            redView.alpha = 0.5
            yellowView.alpha = 1
        } else if yellowView.alpha == 1 {
            yellowView.alpha = 0.5
            greenView.alpha = 1
        } else if redView.alpha == 0.5 {
            startButton.setTitle("NEXT", for: .normal)
            greenView.alpha = 0.5
            redView.alpha = 1
        }
    }
    
}

