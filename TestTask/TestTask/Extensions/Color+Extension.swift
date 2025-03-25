//
//  Color+Extension.swift
//  TestTask
//
//  Created by Pedro Ramos on 24/03/25.
//

import SwiftUI
import UIKit

extension Color {
    var mappingToUIColor: UIColor? {
        UIColor(self)
    }
    
    var mappingToCGColor: CGColor? {
        mappingToUIColor?.cgColor
    }
}
