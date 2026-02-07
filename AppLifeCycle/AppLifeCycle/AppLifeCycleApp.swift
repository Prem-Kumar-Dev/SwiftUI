//
//  AppLifeCycleApp.swift
//  AppLifeCycle
//
//  Created by Prem Kumar on 05/02/26.
//

import SwiftUI

@main
struct AppLifeCycleApp: App {
    @Environment(\.scenePhase) private var scenePhase
    @State private var cart = CartModel()
    var body: some Scene {
        WindowGroup {
            ViwLifeCycle()
                .environment(cart)
        }
        .onChange(of: scenePhase){
            switch scenePhase{
            case .background:
                print("App is in backround")
                cart.saveCart()
            case .inactive:
                print("App is inactive")
                cart.pausePayment()
            case .active:
                print("App is active")
                cart.refreshCart()
            @unknown default:
                print("Unknown phase")
            }
        }
    }
}
