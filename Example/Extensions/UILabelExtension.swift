//
//  UILabelExtension.swift
//  Example
//
//  Created by Görkem Gür on 21.03.2022.
//

import Foundation
import UIKit


public extension UILabel {

    @IBInspectable public var localizedText: String? {
        get {
            return text
        }
        set {
            text = NSLocalizedString(newValue ?? "", comment: "")
        }
    }

}
