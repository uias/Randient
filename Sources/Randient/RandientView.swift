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
    
    open private(set) var gradient: UIGradient!
    
    // MARK: Init
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        randomize(animated: false)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        randomize(animated: false)
    }
    
    // MARK: Randomization
    
    open func randomize(animated: Bool,
                        completion: (() -> Void)? = nil) {
        update(for: Randient.randomize(),
               animated: animated,
               completion: completion)
    }
    
    // MARK: Updating
    
    private func update(for gradient: UIGradient,
                        animated: Bool,
                        completion: (() -> Void)?) {
        setColors(gradient.colors,
                  animated: animated,
                  completion: completion)
    }
}
