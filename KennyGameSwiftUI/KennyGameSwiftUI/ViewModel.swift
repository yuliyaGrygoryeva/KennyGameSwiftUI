//
//  ViewModel.swift
//  KennyGameSwiftUI
//
//  Created by Yuliya  on 1/14/23.
//

import Foundation

class ViewModel {
    
    func getRandomNumber() -> Int {
        Int.random(in: 1...9)
    }
    
    func setVisible(kenny: inout KennyObject) {
        kenny.isVisible = true
    }
}
