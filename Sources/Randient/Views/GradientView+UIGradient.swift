//
//  GradientView+UIGradient.swift
//  Randient
//
//  Created by Merrick Sapsford on 01/11/2018.
//  Copyright © 2018 UI At Six. All rights reserved.
//

import UIKit

extension GradientView {
    
    /// Set a UIGradient.
    ///
    /// - Parameters:
    ///   - gradient: Gradient to set.
    ///   - animated: Whether to animate setting the gradient.
    ///   - completion: Completion handler of setting gradient.
    public func setGradient(_ gradient: UIGradient,
                            animated: Bool,
                            completion: (() -> Void)? = nil) {
        self.setColors(gradient.data.colors,
                       animated: animated,
                       completion: completion)
    }
}
