//
//  RandientView.swift
//  Randient
//
//  Created by Merrick Sapsford on 09/09/2018.
//  Copyright © 2018 UI At Six. All rights reserved.
//

import UIKit

open class RandientView: GradientView {
    
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
    
    @discardableResult
    open func randomize(animated: Bool,
                        completion: (() -> Void)? = nil) -> UIGradient {
        let gradient = Randient.randomize()
        update(for: gradient,
               animated: animated,
               completion: completion)
        return gradient
    }
    
    // MARK: Updating
    
    private func update(for gradient: UIGradient,
                        animated: Bool,
                        completion: (() -> Void)?) {
        self.gradient = gradient
        setColors(gradient.colors,
                  animated: animated,
                  completion: completion)
    }
}
