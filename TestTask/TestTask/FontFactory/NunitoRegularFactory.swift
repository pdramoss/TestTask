//
//  NunitoRegularFactory.swift
//  TestTask
//
//  Created by Pedro Ramos on 16/03/25.
//

import SwiftUI

public class NunitoRegularFactory: CustomFontsProtocol {
    private init() {}
    
    static let instance = NunitoRegularFactory()
    var fontStyle: CustomFontStyle { CustomFontStyle.regular }
}
