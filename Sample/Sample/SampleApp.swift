//
//  SampleApp.swift
//  Sample
//
//  Created by 龚文 on 11/16/23.
//

import SwiftUI
import CocoaPodsTestLibrary
import CocoaPodsTestLibrary

@main
struct SampleApp: App {
    init() {
        TestA.run()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
