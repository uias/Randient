//
//  Randient.swift
//  Randient
//
//  Created by Merrick Sapsford on 09/09/2018.
//  Copyright © 2018 UI At Six. All rights reserved.
//

import Foundation

public class Randient {
    
    private static var lastGradient: UIGradient?
    
    /// Randomly select a new gradient from `UIGradients`.
    ///
    /// - Returns: Randomly selected gradient.
    public class func randomize() -> UIGradient {
        let allGradients = UIGradients.allCases
        let index = Int.random(in: 0 ..< allGradients.count)
        
        let candidate = allGradients[index].gradient
        if candidate.colors != lastGradient?.colors {
            return candidate
        } else {
            return randomize()
        }
    }
}
