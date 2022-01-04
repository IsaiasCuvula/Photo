//
//  RegisterNameScreen.swift
//  photo
//
//  Created by Isaias Cuvula on 4.01.22.
//

import SwiftUI

struct RegisterNameScreen: View {
    
    @State var name = ""
    
    var body: some View {
        VStack(alignment: .leading ,spacing: 20){
            
            Text("Register")
                .font(.system(size: 35, weight: .regular, design: .rounded))
                .padding(.bottom, 20)
            
           
            TextField("name", text: $name)
                .padding()
                .foregroundColor(.black)
                .overlay(RoundedRectangle(cornerRadius: 0).stroke(lineWidth: 3))
            
            
            Button{
                
            } label: {
                CustomText(text: "SIGN UP")
            }
            
            Text("By signing up, you agree to Photo's Terms of service and Privacy Policy.")
                .font(.body)
            
            Spacer()
            
        }
        .padding()
    }
}

struct RegisterNameScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegisterNameScreen()
    }
}
