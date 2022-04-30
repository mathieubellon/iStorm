//
//  ContentView.swift
//  iStorm
//
//  Created by Matthieu Bellon on 30/04/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem{
                    Image(systemName: "house.circle.fill")
                    Text("Home")
                }
            EventsView().tabItem{
                Image(systemName: "list.dash")
                Text("All Events")
            }
            FavoritesView().tabItem{
                Image(systemName: "star.fill")
                Text("My Fav")
            }
            ProfileView().tabItem{
                Image(systemName: "person.circle")
                Text("My profile")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



struct HomeView: View {
    
    
    var body: some View {
        VStack {
            Color.red.ignoresSafeArea(edges: .top)
            Text("Home View")
            Spacer()
        }
    }
}

struct EventsView: View {
    
    
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea(edges: .top)
            Text("Events View")
        }
    }
}

struct FavoritesView: View {
    
    
    var body: some View {
        ZStack {
            Color.yellow.ignoresSafeArea(edges: .top)
            Text("Favorites View")
        }
    }
}

struct ProfileView: View {
    
    
    var body: some View {
        ZStack {
            Color.purple.ignoresSafeArea(edges: .top)
            Text("Profile View")
        }
    }
}
