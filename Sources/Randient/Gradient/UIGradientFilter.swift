//
//  UIGradientFilter.swift
//  Randient
//
//  Created by Merrick Sapsford on 16/10/2018.
//  Copyright © 2018 UI At Six. All rights reserved.
//

import UIKit

/// Filter that can be applied to a `UIGradient`.
public final class UIGradientFilter {
    
    // MARK: Types
    
    public typealias Execution = (UIGradient) -> Bool
    
    // MARK: Properties
    
    internal let identifier = NSUUID().uuidString
    internal let execution: Execution
    
    // MARK: Init
    
    internal init(execution: @escaping Execution) {
        self.execution = execution
    }
}

extension UIGradientFilter: Equatable {
    
    public static func == (lhs: UIGradientFilter, rhs: UIGradientFilter) -> Bool {
        return lhs.identifier == rhs.identifier
    }
}
