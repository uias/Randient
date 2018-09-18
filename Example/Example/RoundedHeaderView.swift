//
//  RoundedHeaderView.swift
//  Example
//
//  Created by Merrick Sapsford on 18/09/2018.
//  Copyright © 2018 UI At Six. All rights reserved.
//

import UIKit

@IBDesignable class RoundedHeaderView: UIView {
    
    private let maskLayer = CAShapeLayer()
    
    // MARK: Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialize()
    }
    
    private func initialize() {
        layer.mask = maskLayer
    }
    
    // MARK: Lifecycle
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        maskLayer.frame = self.bounds
        maskLayer.path = UIBezierPath(roundedRect: self.bounds,
                                      byRoundingCorners: [.bottomLeft, .bottomRight],
                                      cornerRadii: CGSize(width: 32, height: 32)).cgPath
    }
}
