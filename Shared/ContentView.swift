//
//  ContentView.swift
//  Shared
//
//  Created by Stefanus Wilfrid Admaja on 21/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            Image("hero").resizable().scaledToFit()
            
            Text("Hi, I'm Stefanus Wilfrid").font(.title).bold()
                .multilineTextAlignment(.center)
            
            Text("Currently trying to learn swift").font(.title2).foregroundColor(.secondary)
            
            Text("About Me").font(.title3).bold().padding(.top)
            Text("I'm a computer science undergraduate at University of Nottingham Ningbo China, I'm based in Jakarta, Indonesia . I made this app for the sake of my portfolio and my learning of mobile app development . ")
                .padding(.horizontal).multilineTextAlignment(.center)
            
            Text("Want to know more ? ").font(.title3).bold().padding(.top)
            Text("Feel free to connect with me through my linked-in , instagram or discord ! ")
                .padding(.horizontal).padding(.horizontal).multilineTextAlignment(.center)
            Button(action: {

                if let yourURL = URL(string: "https://www.instagram.com/stefanuswat/") {
                    UIApplication.shared.open(yourURL, options: [:], completionHandler: nil)
                }

            }) {
               Text("Visit my Instagram")
            }.padding(.vertical)
            
            Button(action: {

                if let yourURL = URL(string: "https://www.linkedin.com/in/stefanus-wilfrid-7aa2a21b0/") {
                    UIApplication.shared.open(yourURL, options: [:], completionHandler: nil)
                }

            }) {
               Text("Visit me on Linked in")
            }
            
        }
        .navigationTitle("About Me")

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabView{
            NavigationView{
                ContentView()
            }
            .tabItem{
                Image(systemName: "person.circle.fill")
                Text("About Me ")
            }
            FAQ()
            
            .tabItem {
                Image(systemName: "star.fill")
                Text("FAQ")
            }
            NavigationView{
                LocView()
            }
            .tabItem{
                Image(systemName: "globe")
                Text("Where I Live ")
            }
            
        }
    }
}
