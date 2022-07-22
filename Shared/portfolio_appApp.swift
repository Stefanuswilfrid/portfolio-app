//
//  portfolio_appApp.swift
//  Shared
//
//  Created by Stefanus Wilfrid Admaja on 21/07/22.
//

import SwiftUI

@main
struct portfolio_appApp: App {
    var body: some Scene {
        WindowGroup {
            TabView{
                NavigationView{
                    ContentView()
                }
                .tabItem{
                    Image(systemName: "person.circle.fill")
                    Text("About Me ")
                }
                NavigationView {
                    FAQ()
                }
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("FAQ")
                }
                NavigationView{
                    LocView()
                }
                .tabItem{
                    Image(systemName: "person.circle.fill")
                    Text("Where I Live ")
                }
            }
        }
    }
}
