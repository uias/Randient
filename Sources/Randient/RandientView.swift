//
//  RandientView.swift
//  Randient
//
//  Created by Merrick Sapsford on 09/09/2018.
//  Copyright © 2018 UI At Six. All rights reserved.
//

import UIKit

@IBDesignable open class RandientView: GradientView {
    
    // MARK: Properties
    
    open var gradient: UIGradient! {
        didSet {
            update(for: gradient)
        }
    }
    
    // MARK: Init
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        randomize()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        randomize()
    }
    
    // MARK: Randomization
    
    open func randomize() {
        let allGradients = UIGradients.allCases
        let index = Int.random(in: 0 ..< allGradients.count)
        
        self.gradient = allGradients[index].gradient
    }
    
    // MARK: Updating
    
    private func update(for gradient: UIGradient) {
        self.colors = gradient.colors
    }
}
