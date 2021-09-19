//
//  LogOutButton.swift
//  StateAndDataFlowApp
//
//  Created by Константин Прокофьев on 15.09.2021.
//

import SwiftUI

struct LogOutButton: View {
    @EnvironmentObject var user: UserManager
    
    var body: some View {
        Button(action: {
            UserDefaults.standard.removeObject(forKey: "name")
            user.isRegister.toggle()
        }) {
            Text("Log Out")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
        }
        .frame(width: 200, height: 60)
        .background(Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)))
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), lineWidth: 2))
        .shadow(color: Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)), radius: 5, x: 5, y: 5)
    }
}

//private func logOut() {
//    UserDefaults.standard.removeObject(forKey: "name")
//    user.isRegister.toggle()
//}

struct LogOutButton_Previews: PreviewProvider {
    static var previews: some View {
        LogOutButton()
    }
}
