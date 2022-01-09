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
    @State private var showAlert = false
    @State private var isPresented = false
    @State private var errorMessage = ""
    @State private var errorTitle = ""
    
    
    var body: some View {
        VStack(alignment: .leading ,spacing: 20){
            
            CustomNavBarTitle(text: "Register")
            
            Group{
                TextField("email", text: $emailRegister)
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)
                SecureField("password", text: $passwordRegister)
            }
            .modifier(StrokeForTextField())
            
            
            Button {
                if emailRegister != "" && passwordRegister != "" {
                    
                    self.isPresented.toggle()
                    
                }else  {
                    
                    self.showAlert = true
                    self.errorTitle = "Invalid Credentials"
                    self.errorMessage = "Make sure to enter a valid email and password"
                    
                    return
                }
                
                
            } label: {
                CustomText(text: "NEXT")
            }.fullScreenCover(isPresented: $isPresented, onDismiss: nil) {
                RegisterNameScreen(email: emailRegister, password: passwordRegister)
                
            }
            .alert(isPresented: $showAlert) {
                Alert(title: Text(errorTitle), message: Text(errorMessage), dismissButton: .default(Text("OK")))
            }
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
