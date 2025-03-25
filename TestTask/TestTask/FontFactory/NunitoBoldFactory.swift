//
//  NunitoBoldFactory.swift
//  TestTask
//
//  Created by Pedro Ramos on 16/03/25.
//

import SwiftUI

public class NunitoBoldFactory: CustomFontsProtocol {
    private init() {}
    
    static let instance = NunitoBoldFactory()
    var fontStyle: CustomFontStyle { CustomFontStyle.bold }
}
