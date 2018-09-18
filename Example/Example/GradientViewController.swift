//
//  GradientViewController.swift
//  Example
//
//  Created by Merrick Sapsford on 09/09/2018.
//  Copyright © 2018 UI At Six. All rights reserved.
//

import UIKit
import Randient

class GradientViewController: UIViewController {

    @IBOutlet private weak var randientView: RandientView!
    @IBOutlet private weak var gradientNameLabel: UILabel!
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gradientNameLabel.text = randientView.gradient.name
    }
    
    // MARK: Actions
    
    @IBAction private func randomizeButtonPressed(_ sender: UIButton) {
        let gradient = randientView.randomize(animated: true)
        gradientNameLabel.text = gradient.name
    }
}

