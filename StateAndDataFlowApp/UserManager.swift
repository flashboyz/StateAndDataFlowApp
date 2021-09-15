//
//  UserManager.swift
//  StateAndDataFlowApp
//
//  Created by Константин Прокофьев on 14.09.2021.
//

import Combine

class UserManager: ObservableObject {
    @Published var isRegister = false
    var name = ""
    
    public func logOut() {
        isRegister.toggle()
        name = ""
    }
}
