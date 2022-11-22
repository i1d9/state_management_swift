//
//  StateApp.swift
//  State
//
//  Created by Ian Nalyanya on 22/11/2022.
//

import SwiftUI

@main
struct StateApp: App {
    @ObservedObject var user = User()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(user)
        }
    }
}
