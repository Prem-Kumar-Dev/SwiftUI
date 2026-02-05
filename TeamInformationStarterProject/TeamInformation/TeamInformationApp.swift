//
//  TeamInformationApp.swift
//  TeamInformation
//
//  Created by Probeer on 02/02/26.
//

import SwiftUI

@main
struct TeamInformationApp: App {
    @State private var teams = Teams()
    
    var body: some Scene {
        WindowGroup {
            TeamListView()
                .environment(teams)
        }
    }
}
