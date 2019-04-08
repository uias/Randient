//
//  Randient.swift
//  Randient
//
//  Created by Merrick Sapsford on 09/09/2018.
//  Copyright © 2018 UI At Six. All rights reserved.
//

import Foundation

public class Randient {
    
    // MARK: Properties
    
    /// Filters that are applied to random selection.
    public private(set) static var filters = [UIGradientFilter]()
    
    /// The last randomized gradient.
    private static var lastGradient: UIGradient?
    
    // MARK: Randomization
    
    /// Randomly select a new gradient from `UIGradients`.
    ///
    /// - Returns: Randomly selected gradient.
    public class func randomize() -> UIGradient {
        let allGradients = UIGradient.allCases
        let index = Int.random(in: 0 ..< allGradients.count)
        
        if let newGradient = verifyGradient(allGradients[index]) {
            return newGradient
        } else {
            return randomize()
        }
    }
}

// MARK: - Verification
extension Randient {
    
    internal class func verifyGradient(_ gradient: UIGradient) -> UIGradient? {
        guard let gradient = verifyIsNewGradient(gradient) else {
            return nil
        }
        guard checkGradient(gradient, passes: Randient.filters) else {
            return nil
        }
        
        return gradient
    }
    
    /// Verify that the new gradient can be used.
    ///
    /// Checks that it is not equal to the previously returned gradient.
    ///
    /// - Parameter gradient: New gradient.
    /// - Returns: Gradient if it can be used.
    internal class func verifyIsNewGradient(_ gradient: UIGradient) -> UIGradient? {
        guard gradient.data.colors != lastGradient?.data.colors else {
            return nil
        }
        guard checkGradient(gradient, passes: Randient.filters) else {
            return nil
        }
        
        self.lastGradient = gradient
        return gradient
    }
}

// MARK: - Filtering
extension Randient {
    
    /// Add a new filter that is applied to the randomly selected gradients.
    ///
    /// - Parameter filters: Execution of the filter.
    public class func addFilter(that filters: @escaping UIGradientFilter.Execution) {
        Randient.filters.append(UIGradientFilter(execution: filters))
    }
    
    /// Remove a filter from being applied to random selection.
    ///
    /// - Parameter filter: Filter to remove.
    public class func removeFilter(_ filter: UIGradientFilter) {
        guard let index = Randient.filters.firstIndex(of: filter) else {
            return
        }
        Randient.filters.remove(at: index)
    }
    
    internal class func checkGradient(_ gradient: UIGradient,
                                      passes filters: [UIGradientFilter]) -> Bool {
        for filter in filters {
            if filter.execution(gradient) == false {
                return false
            }
        }
        return true
    }
}
