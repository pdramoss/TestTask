//
//  UsersTabView.swift
//  TestTask
//
//  Created by Pedro Ramos on 24/03/25.
//

import SwiftUI

struct UsersTabView: View {
    struct Localizable {
        static var usersLabel: String = String(localized: "userstab.list.label")
        static var signupLabel: String = String(localized: "userstab.signup.label")
    }
    
    struct VisualValues {
        static var usersImgeName: String = "person.3.fill"
        static var signupImageName: String = "person.crop.circle.fill.badge.plus"
        static var tabViewTint: Color = ColorTask.secondary.base
        static var tabbarAppearance: UIColor? = ColorTask.gray.light.mappingToUIColor
    }
    
    var body: some View {
        TabView {
            Tab(Localizable.usersLabel, systemImage: VisualValues.usersImgeName) {
                UsersListView()
            }
            Tab(Localizable.signupLabel, systemImage: VisualValues.signupImageName) {
                UsersSignupView()
            }
        }
        .onAppear() {
            UITabBar.appearance().backgroundColor = VisualValues.tabbarAppearance
        }
        .tint(VisualValues.tabViewTint)
    }
}

#Preview {
    UsersTabView()
}
