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
    
    
    var body: some View {
        VStack(alignment: .leading ,spacing: 20){
            
            Text("Register")
                .font(.system(size: 35, weight: .regular, design: .rounded))
                .padding(.bottom, 20)
            
            Group{
                TextField("email", text: $emailRegister)
                SecureField("password", text: $passwordRegister)
            }
            .padding()
            .foregroundColor(.black)
            .overlay(RoundedRectangle(cornerRadius: 0).stroke(lineWidth: 3))
            
            
            Button{
                
                //Next
                
            } label: {
                CustomText(text: "NEXT")
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
