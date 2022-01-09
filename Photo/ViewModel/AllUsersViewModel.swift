//
//  AllUsersViewModel.swift
//  photo
//
//  Created by Isaias Cuvula on 9.01.22.
//

import Foundation


class AllUsersViewModel: ObservableObject {
    
    @Published var users = [User]()
    @Published var errorMessage = ""
    
    init(){
        fetchAllUsers()
    }
    
    
    private func fetchAllUsers() {
        FirebaseManager.shared.firestore.collection("users")
            .getDocuments { documentSnapshot, error in
                if let error = error {
                    print("Failed to fetch users \(error)")
                    return
                }
                
                documentSnapshot?.documents.forEach({ snapshot in
                    let user = try? snapshot.data(as: User.self)
                    if user?.uid != FirebaseManager.shared.auth.currentUser?.uid {
                        self.users.append(user ?? User(id: "", uid: "", email: "", name: ""))
                    }
                })
            }
    }
}
