//
//  UIView-ext.swift
//  Dicee-iOS13
//
//  Created by macbook on 23.10.2023.
//  Copyright © 2023 London App Brewery. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func addSubViews(_ views: UIView...) {
        for view in views {
            view.translatesAutoresizingMaskIntoConstraints = false
            self.addSubview(view)
        }
    }
}
