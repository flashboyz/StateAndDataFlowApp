//
//  ButtonView.swift
//  StateAndDataFlowApp
//
//  Created by Константин Прокофьев on 14.09.2021.
//

import SwiftUI

struct ButtonView: View {
   @ObservedObject var timer: TimeCounter
    
    var body: some View {
        Button(action: {timer.startTimer()}, label: {
            Text("\(timer.buttonTitle)")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
        })
        .frame(width: 200, height: 60)
        .background(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)))
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)), lineWidth: 4))
        .shadow(color: Color(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)), radius: 5, x: 5, y: 5)
    }
}


//struct ButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        ButtonView(timer: <#TimeCounter#>)
//    }
//}
