//
//  GradientView.swift
//  Randient
//
//  Created by Merrick Sapsford on 09/09/2018.
//  Copyright © 2018 UI At Six. All rights reserved.
//

import UIKit

@IBDesignable open class GradientView: UIView {
    
    // MARK: Properties
    
    private var gradientLayer: CAGradientLayer? {
        get {
            if let gradientLayer = self.layer as? CAGradientLayer {
                return gradientLayer
            }
            return nil
        }
    }
    
    open var colors: [UIColor]? = nil {
        didSet {
            var colorRefs = [CGColor]()
            for color in colors ?? [] {
                colorRefs.append(color.cgColor)
            }
            gradientLayer?.colors = colorRefs
        }
    }
    
    open var locations: [Double]? = nil {
        didSet {
            var locationNumbers = [NSNumber]()
            for location in locations ?? [] {
                locationNumbers.append(NSNumber(value: location))
            }
            gradientLayer?.locations = locationNumbers
        }
    }
    
    open var startPoint: CGPoint = CGPoint(x: 0.5, y: 0.0) {
        didSet {
            gradientLayer?.startPoint = startPoint
        }
    }
    open var endPoint: CGPoint = CGPoint(x: 0.5, y: 1.0) {
        didSet {
            gradientLayer?.endPoint = endPoint
        }
    }
    
    open override class var layerClass: AnyClass {
        return CAGradientLayer.self
    }
    
    // MARK: Init
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialize()
    }
    
    private func initialize() {
        self.colors = [UIColor.white, UIColor.black]
        gradientLayer?.startPoint = self.startPoint
        gradientLayer?.endPoint = self.endPoint
    }
    
    // MARK: Customization
    
    func setColors(_ colors: [UIColor],
                   animated: Bool,
                   duration: Double = 1.0,
                   completion: (() -> Void)?) {
        let fromColors = gradientLayer?.colors
        self.colors = colors
        if animated {
            
            CATransaction.begin()
            
            let animation = CABasicAnimation(keyPath: "colors")
            animation.fromValue = fromColors
            animation.toValue = gradientLayer?.colors
            animation.duration = duration
            animation.isRemovedOnCompletion = true
            animation.fillMode = .forwards
            animation.timingFunction = CAMediaTimingFunction(name: .linear)
            
            CATransaction.setCompletionBlock {
                completion?()
            }
            
            gradientLayer?.add(animation, forKey: "colors")
            CATransaction.commit()
        } else {
            completion?()
        }
    }
}
