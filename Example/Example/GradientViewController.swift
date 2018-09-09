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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    // MARK: Actions
    
    @IBAction private func randomizeButtonPressed(_ sender: UIButton) {
        randientView.randomize(animated: true)
    }
}

