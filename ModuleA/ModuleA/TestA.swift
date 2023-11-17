//
//  TestA.swift
//  ModuleA
//
//  Created by 龚文 on 11/16/23.
//

import AppLovinSDK
import Foundation
import CocoaPodsTestLibrary

public enum TestA {
    public static func run() {
        print("TestA => run")
        TestCore.run()
        TestB.run()
    }
}
