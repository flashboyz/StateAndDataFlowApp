//
//  ContentView.swift
//  StateAndDataFlowApp
//
//  Created by Константин Прокофьев on 14.09.2021.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var user: UserManager
    @StateObject private var timer = TimeCounter()
    
    var body: some View {
        VStack {
            Text("Hi, \(user.name)!")
                .foregroundColor(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)))
                .font(.largeTitle)
                .offset(x: 0, y: 100)
                .shadow(color: Color(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)), radius: 2, x: 1, y: 1)
            Text("\(timer.counter)")
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .font(.largeTitle)
                .offset(x: 0, y: 100)
                .shadow(color: Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)), radius: 2, x: 1, y: 1)
            Spacer()
            
            ButtonView(timer: timer)
            Spacer()
            LogOutButton()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}

