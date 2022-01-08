//
//  MainView.swift
//  photo
//
//  Created by Isaias Cuvula on 4.01.22.
//

import SwiftUI

struct MainView: View {
    
    @State private var selection = 0
    
    var body: some View {
       
        NavigationView {
            TabView(selection: $selection){
                    HomeScreenDiscover()
                        .tabItem {
                            Image(systemName: "house")
                        }
                        .tag(0)
                    
                    SearchScreen()
                        .tabItem {
                            Image(systemName: "magnifyingglass")
                        }
                        .tag(1)
                    
                    Text("Add Photo")
                    .tabItem {
                        Image(systemName: "plus")
                        
                    }
                    .tag(2)
                    
                    MessageScreen()
                        .tabItem {
                            Image(systemName: "message")
                        }
                        .tag(3)
                    
                    ProfileScreen()
                        .tabItem {
                            Image(systemName: "person")
                        }
                        .tag(4)
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
