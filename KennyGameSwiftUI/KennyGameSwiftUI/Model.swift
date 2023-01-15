//
//  Model.swift
//  KennyGameSwiftUI
//
//  Created by Yuliya  on 1/9/23.
//

import Foundation
import SwiftUI

class KennyObject: Hashable {
    
    static func == (lhs: KennyObject, rhs: KennyObject) -> Bool {
        lhs.image == rhs.image && lhs.isVisible == rhs.isVisible && rhs.isVisible == lhs.isVisible && rhs.opacity == lhs.opacity
    }
    
    var id: String = UUID().uuidString
    var image: String = "Kenny"
    var isVisible: Bool = false
    var opacity: Double {
        isVisible ? 1 : 0
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
        hasher.combine(image)
        hasher.combine(isVisible)
        hasher.combine(opacity)
    }
}
