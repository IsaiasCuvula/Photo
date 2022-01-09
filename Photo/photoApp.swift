//
//  photoApp.swift
//  photo
//
//  Created by Isaias Cuvula on 3.01.22.
//

import SwiftUI

@main
struct photoApp: App {
    
    @ObservedObject private var vm = UserDataViewModel()
    
    var body: some Scene {
        WindowGroup {
            if vm.isUserLogedOut {
                LoggedOutScreen()
                
            }else {
                MainView()
            }
        }
    }
}
