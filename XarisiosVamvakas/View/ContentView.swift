//
//  ContentView.swift
//  XarisiosVamvakas
//
//  Created by Angelos Staboulis on 6/1/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem {
                    Image("home")
                    Text("Αρχική")
                }
            Biography()
                .tabItem {
                    Image("resume")
                    Text("Βιογραφία")
                }
            MediaView()
                .tabItem {
                    Image("multimedia")
                    Text("Πολυμέσα")
                }
            Gallery()
                .tabItem {
                    Image("gallery")
                    Text("Φωτογραφίες")
                }
            MapView()
                .tabItem {
                    Image(systemName: "map")
                    Text("Χάρτης")
            }
        }
    }
}

#Preview {
    ContentView()
}
