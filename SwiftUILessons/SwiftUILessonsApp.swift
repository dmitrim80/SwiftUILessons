//
//  SwiftUILessonsApp.swift
//  SwiftUILessons
//
//  Created by Dmitri Morozov on 5/25/23.
//

import SwiftUI

@main
struct SwiftUILessonsApp: App {
    
    let guestManager = GuestManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(guestManager)
        }
    }
}
