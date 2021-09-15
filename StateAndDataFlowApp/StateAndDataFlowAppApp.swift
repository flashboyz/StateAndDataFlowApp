//
//  StateAndDataFlowAppApp.swift
//  StateAndDataFlowApp
//
//  Created by Константин Прокофьев on 14.09.2021.
//

import SwiftUI

@main
struct StateAndDataFlowAppApp: App {
    @StateObject private var userManager = UserManager()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(userManager)
        }
    }
}
