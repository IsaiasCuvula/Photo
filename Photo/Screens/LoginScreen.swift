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
    
    var body: some View {
        VStack(alignment: .leading ,spacing: 20){
            
            Text("Log in")
                .font(.system(size: 35, weight: .regular, design: .rounded))
                .padding(.bottom, 20)
            
            Group{
                TextField("email", text: $emailLogin)
                SecureField("password", text: $passwordLogin)
            }
            .padding()
            .foregroundColor(.black)
            .overlay(RoundedRectangle(cornerRadius: 0).stroke(lineWidth: 3))
            
            
            Button{
                
                //Next
                
            } label: {
                Text("LOG IN")
                    .padding()
                    .font(.system(size: 18, weight: .bold, design: .rounded))
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(8)
            }
            
            Spacer()
            
        }
        .padding()
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
