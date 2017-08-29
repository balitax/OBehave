//
//  OBFixedConstraintChangeKeyboardObserverBehavior.swift
//  OBehave
//
//  Created by Warren Gavin on 04/02/16.
//  Copyright © 2016 Apokrupto. All rights reserved.
//

import UIKit

/// Reduce a constraint by a fixed amount when a keyboard appears
class OBFixedConstraintChangeKeyboardObserverBehavior: OBKeyboardObserverBehavior {
    @IBOutlet public var heightLayoutConstraint: NSLayoutConstraint?
    @IBInspectable public var heightReduction: CGFloat = .defaultHeightReduction
    
    override func onKeyboardAppear(in rect: CGRect) {
        heightLayoutConstraint?.constant -= heightReduction
        locked = true
    }
    
    override func onKeyboardDisappear(in rect: CGRect) {
        heightLayoutConstraint?.constant += heightReduction
    }
}

private extension CGFloat {
    static let defaultHeightReduction: CGFloat = 100.0
}
