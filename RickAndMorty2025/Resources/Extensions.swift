//
//  Extensions.swift
//  RickAndMorty2025
//
//  Created by Luka Šalipur on 13. 10. 2025..
//

import Foundation
import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach ({
            addSubview($0)
        })
    }
}
