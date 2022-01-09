//
//  UserDataViewModel.swift
//  photo
//
//  Created by Isaias Cuvula on 9.01.22.
//

import Foundation
import Firebase
import FirebaseFirestoreSwift



class UserDataViewModel: ObservableObject {
    
    @Published var user: User?
    @Published var isUserLogedOut = false
    
    
    init() {
        
        DispatchQueue.main.async {
            self.isUserLogedOut = FirebaseManager.shared.auth.currentUser?.uid == nil
        }
        
        fetchCurrentUser()
        
    }
    
    
    func fetchCurrentUser(){
        guard let uid = FirebaseManager.shared.auth.currentUser?.uid else {
            print("Could not find firebase uid")
            return
        }
        
        FirebaseManager.shared.firestore.collection("users")
            .document(uid)
            .getDocument { snapshot, error in
                
                if let error = error  {
                    
                    print("Failed to fetc current user: \(error)")
                    return
                    
                }
                
                
                self.user = try? snapshot?.data(as: User.self)
                FirebaseManager.shared.currentUser = self.user
                
            }
    }
    
    func signOut(){
        isUserLogedOut.toggle()
        try? FirebaseManager.shared.auth.signOut()
    }
    
    
}














