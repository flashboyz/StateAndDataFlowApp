//
//  RegisterView.swift
//  StateAndDataFlowApp
//
//  Created by Константин Прокофьев on 14.09.2021.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject var user: UserManager
    @AppStorage(DataManager.name) private var name = ""
    
    var body: some View {
        HStack {
            VStack{
             TextField("Enter your name", text: $name)
                .multilineTextAlignment(.center)
                Button(action: registerUser) {
                    HStack{
                        Image(systemName: "checkmark.circle")
                        Text("Ok")
                    }
                    .font(.title)
                    .foregroundColor(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))).shadow(color: Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)), radius: 2, x: 2, y: 2)
                }
//                .disabled(false)
//                .opacity(1)
            }
            .padding(.leading, 40.0)
            Text("\(name.count)")
                .padding(.trailing, 20.0)
        }
    }
    
    private func registerUser() {
        if !name.isEmpty {
            user.name = name
            user.isRegister.toggle()
        }
    }
    
//    private func characterCheck() {
//        if name.count >= 3{
//            opacity = 1
//        } else {
//            return
//        }
//    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
