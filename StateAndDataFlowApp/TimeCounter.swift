//
//  TimeCounter.swift
//  StateAndDataFlowApp
//
//  Created by Константин Прокофьев on 14.09.2021.
//
import Combine
import Foundation

class TimeCounter: ObservableObject {
    let objectWillChange = PassthroughSubject<TimeCounter, Never>()
    
    var counter = 3
    var timer : Timer?
    var buttonTitle = "START"
    
    func startTimer() {
        if counter > 0 {
            timer = Timer.scheduledTimer(
                timeInterval: 1,
                target: self,
                selector: #selector(updateCounter),
                userInfo: nil,
                repeats: true
            )
        }
        buttonDidTapped()
    }
    
    @objc private func updateCounter() {
        if counter > 0 {
            counter -= 1
        } else {
            killTimer()
            buttonTitle = "RESET"
        }
        objectWillChange.send(self)
    }
    
    private func killTimer() {
        timer?.invalidate()
        timer = nil
    }
    
    private func buttonDidTapped() {
        if buttonTitle == "RESET" {
            counter = 3
            buttonTitle = "START"
        } else {
            buttonTitle = "WAIT..."
        }
        objectWillChange.send(self)
    }
}
