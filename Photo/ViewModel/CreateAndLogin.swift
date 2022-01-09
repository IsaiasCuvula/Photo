//
//  handleCreateAction.swift
//  photo
//
//  Created by Isaias Cuvula on 9.01.22.
//

import Foundation


class CreateAndLogin {
    
    
    func createAccount(email: String, password: String, name: String){
        
        FirebaseManager.shared.auth.createUser(withEmail: email, password: password) { result, error in
            
            
            if let error = error {
                print("Failed to create user: \(error)")
            }
            
            print("User sucessfully created: \(String(describing: result?.user.email))")
            
            
            self.saveUserInfo(name: name, email: email)
            
        }
        
        
    }
    
    
    private func saveUserInfo( name: String, email: String ){
        
        guard let uid = FirebaseManager.shared.auth.currentUser?.uid else { return }
        
        let userData = [ Constants.name: name ,Constants.email: email]
        
        FirebaseManager.shared.firestore.collection(Constants.users)
            .document(uid).setData(userData) { error in
                
                if let error = error {
                    print(error)
                    return
                }
                
                print("Success")
            }
        
    }
    
    
    
    func loginUser(email: String, password: String) {
        FirebaseManager.shared.auth.signIn(withEmail: email, password: password) { result, error in
            
            if let error = error {
                print("Failed to login user \(error)")
                return
            }
            
            print("Successfully logged in as user: \(result?.user.uid ?? "")")
              
        }
    }
    
    
}
