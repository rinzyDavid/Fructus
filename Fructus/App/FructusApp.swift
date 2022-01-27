//
//  FructusApp.swift
//  Fructus
//
//  Created by david on 15/12/2021.

//
/*
 
 This is a sample swiftui app that demostrates the various concepts of swiftui
 for building beautiful and effecient apps
 
 */

import SwiftUI


@main
struct FructusApp: App {
    
    @AppStorage("isOnboarding") var isOnBoarding:Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnBoarding{
                OnBoardingView()
            }
            else{
                FruitListView()
            }
            
        }
    }
}
