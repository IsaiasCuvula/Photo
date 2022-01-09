//
//  RegisterScreen.swift
//  photo
//
//  Created by Isaias Cuvula on 3.01.22.
//

import SwiftUI

struct RegisterScreen: View {
    
    @State var emailRegister = ""
    @State var passwordRegister = ""
    @State var name = ""
    @State private var showAlert = false
    @State private var isPresented = false
    @State private var errorMessage = ""
    @State private var errorTitle = ""
    let createAndLogin = CreateAndLogin()
    
    
    var body: some View {
        VStack(alignment: .leading ,spacing: 20){
            
            CustomNavBarTitle(text: "Register")
            
            Group{
                TextField("name", text: $name)
                    
                TextField("email", text: $emailRegister)
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)
                SecureField("password", text: $passwordRegister)
            }
            .modifier(StrokeForTextField())
            
            
            Button {
                if emailRegister != "" && passwordRegister != "" && name != "" {
                    
                    createAndLogin.createAccount(email: emailRegister, password: passwordRegister, name: name)
                    self.isPresented.toggle()
                    
                }else  {
                    
                    self.showAlert = true
                    self.errorTitle = "Invalid Credentials"
                    self.errorMessage = "Make sure to enter a valid email and password"
                    
                    return
                }
                
                
            } label: {
                CustomText(text: "SIGN UP")
            }
            .fullScreenCover(isPresented: $isPresented, onDismiss: nil, content: MainView.init)
            .alert(isPresented: $showAlert) {
                Alert(title: Text(errorTitle), message: Text(errorMessage), dismissButton: .default(Text("OK")))
            }
            
            
            Text("By signing up, you agree to Photo's Terms of service and Privacy Policy.")
                .font(.body)
            
            Spacer()
            
        }
        .padding()
    }
}

struct RegisterScreen_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            RegisterScreen()
        }
    }
}
