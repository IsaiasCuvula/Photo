//
//  MainView.swift
//  photo
//
//  Created by Isaias Cuvula on 4.01.22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            HomeScreenDiscover()
                .tabItem {
                    Image(systemName: "house")
                }
            
            SearchScreen()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            
            PhotoOpenView()
                .tabItem {
                    Image(systemName: "plus")
                }
            
            MessageScreen()
                .tabItem {
                    Image(systemName: "message")
                }
            
            ProfileScreen()
                .tabItem {
                    Image(systemName: "person")
                }
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
