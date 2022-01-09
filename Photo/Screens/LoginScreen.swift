//
//  LoginScreen.swift
//  photo
//
//  Created by Isaias Cuvula on 3.01.22.
//

import SwiftUI

struct LoginScreen: View {
    
    @State var emailLogin = ""
    @State var passwordLogin = ""
    let createAndLogin = CreateAndLogin()
    @State var isPresented = false
    
  //MARK: - BODY
    var body: some View {
        
        VStack(alignment: .leading ,spacing: 20){
            
            CustomNavBarTitle(text: "Log in")
            
            Group{
                TextField("email", text: $emailLogin)
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)
                SecureField("password", text: $passwordLogin)
            }
            .modifier(StrokeForTextField())
            
            
            Button{
                if emailLogin != "" && passwordLogin != ""{
                    
                    
                    createAndLogin.loginUser(email: emailLogin, password: passwordLogin)
                    
                    self.isPresented = true
                    
                }
            } label: {
                CustomText(text: "LOG IN")
            }.fullScreenCover(isPresented: $isPresented, onDismiss: nil, content: MainView.init)
            
            Spacer()
            
        }
        .padding()
    }
}

//MARK: - PREVIEW

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
