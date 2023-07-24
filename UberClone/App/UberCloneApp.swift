//
//  UberCloneApp.swift
//  UberClone
//
//  Created by Nguyễn Bách on 17/07/2023.
//

import SwiftUI

@main
struct UberCloneApp: App {
    @StateObject var locationViewModel = LocationSearchViewModel()
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(locationViewModel)
        }
    }
}
