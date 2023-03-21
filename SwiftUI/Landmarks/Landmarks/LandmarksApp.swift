//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 박성준 on 2023/03/08.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
