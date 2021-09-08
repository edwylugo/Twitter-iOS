//
//  EditProfileViewModel.swift
//  TwitterTutorial
//
//  Created by Edwy Lugo on 07/09/21.
//  Copyright © 2021 SDvirtua Marketing Digital. All rights reserved.
//

import Foundation

enum EditProfileOptions: Int, CaseIterable {
    case fullname
    case username
    case bio
    
    var descrition: String {
        switch self {
        case .fullname: return "Name"
        case .username: return "Username"
        case .bio: return "Bio"
        }
    }
}


struct EditProfileViewModel {
    private let user: User
    let option: EditProfileOptions
    
    var titleText: String {
        return option.descrition
    }
    
    var optionValue: String? {
        switch option {
        case .username: return user.username
        case .fullname: return user.fullname
        case .bio: return user.bio
        }
    }
    
    var shouldHideTextField: Bool {
        return option == .bio
    }
    
    var shouldHideTextView: Bool {
        return option != .bio
    }
    
    var shouldHidePlaceHolderLabel: Bool {
        return user.bio != nil
    }
    
    init(user: User, option: EditProfileOptions) {
        self.user = user
        self.option = option
    }
}
