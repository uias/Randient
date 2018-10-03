//
//  UIGradient+Metadata.swift
//  Randient
//
//  Created by Merrick Sapsford on 18/09/2018.
//  Copyright © 2018 UI At Six. All rights reserved.
//

import UIKit

public extension UIGradient {
    
    /// Gradient Metadata
    public struct Metadata {
        
        /// Whether the gradients color space is primarily 'light' colors.
        public let isPredominantlyLight: Bool
    }
    
    /// Metadata about the gradient.
    var metadata: Metadata {
        return Metadata(isPredominantlyLight: self.isLight)
    }
}

private extension UIGradient {
    
    var isLight: Bool {
        let results = data.colors.map({ $0.isLight })
        let counts = results.reduce(into: [:]) { $0[$1, default: 0] += 1 }
        
        if let (value, _) = counts.max(by: { $0.1 < $1.1 }) {
            return value
        }
        return false
    }
}
