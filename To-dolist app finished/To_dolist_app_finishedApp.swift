//
//  To_dolist_app_finishedApp.swift
//  To-dolist app finished
//
//  Created by Myers Elliott Mbonda on 2024-04-08.
//
import SwiftData
import SwiftUI

@main
struct To_dolist_app_finishedApp: App {
    var body: some Scene {
        WindowGroup {
            LandingView()
                .modelContainer(for: TdoItem.self)
        }
    }
}
