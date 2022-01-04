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
            
            CustomNavBarTitle(text: "Register")
            
            Group{
                TextField("email", text: $emailRegister)
                SecureField("password", text: $passwordRegister)
            }
            .modifier(StrokeForTextField())
            
            
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
