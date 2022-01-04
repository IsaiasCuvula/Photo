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
  //MARK: - BODY
    var body: some View {
        
        VStack(alignment: .leading ,spacing: 20){
            
            CustomNavBarTitle(text: "Log in")
            
            Group{
                TextField("email", text: $emailLogin)
                SecureField("password", text: $passwordLogin)
            }
            .modifier(StrokeForTextField())
            
            
            Button{
                //Next
            } label: {
                CustomText(text: "LOG IN")
            }
            
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
