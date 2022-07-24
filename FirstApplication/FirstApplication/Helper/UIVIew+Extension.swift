//
//  UIVIew+Extension.swift
//  FirstApplication
//
//  Created by Deepam Sharma on 25/07/22.
//

import UIKit

extension UIView {
    func setCornerRadius() {
        self.layer.cornerRadius = self.frame.height / 2
        self.layer.masksToBounds = true
    }
}
