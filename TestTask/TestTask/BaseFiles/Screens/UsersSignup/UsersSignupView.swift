//
//  UsersSignupView.swift
//  TestTask
//
//  Created by Pedro Ramos on 24/03/25.
//

import SwiftUI

struct UsersSignupView: View {
    struct Localizable {
        static var signupTitleLabel: String = String(localized: "usersignup.title.label")
    }
    
    struct VisualValues {
    }
    
    var body: some View {
        VStack {
            TestTaskTopbar(Localizable.signupTitleLabel)
            Spacer()
        }
    }
}

#Preview {
    UsersSignupView()
}
