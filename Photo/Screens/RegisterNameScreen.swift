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
            
            CustomNavBarTitle(text: "Register")
           
            TextField("name", text: $name)
                .modifier(StrokeForTextField())
            
            
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
