//
//  UsersListView.swift
//  TestTask
//
//  Created by Pedro Ramos on 24/03/25.
//

import SwiftUI

struct UsersListView: View {
    @State var list: [UserModel] = UserModel.mockListFull
    struct Localizable {
        static var usersTitleLabel: String = String(localized: "userlist.title.label")
    }
    
    struct VisualValues {
    }
    
    var body: some View {
        VStack {
            TestTaskTopbar(Localizable.usersTitleLabel)
            if list.isEmpty {
                Spacer()
                UsersEmptyView()
                Spacer()
            } else {
                List(list) {
                    UserItemView($0)
                }
                .listStyle(.plain)
            }
        }
    }
}

#Preview {
    UsersListView()
}
