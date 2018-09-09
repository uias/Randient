//
//  Randient.swift
//  Randient
//
//  Created by Merrick Sapsford on 09/09/2018.
//  Copyright © 2018 UI At Six. All rights reserved.
//

import Foundation

public class Randient {
    
    public class func randomize() -> UIGradient {
        let allGradients = UIGradients.allCases
        let index = Int.random(in: 0 ..< allGradients.count)
        
        return allGradients[index].gradient
    }
}
