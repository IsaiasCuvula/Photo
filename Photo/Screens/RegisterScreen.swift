//
//  RegisterScreen.swift
//  photo
//
//  Created by Isaias Cuvula on 3.01.22.
//

import SwiftUI

struct RegisterScreen: View {
    
    @State var email = ""
    @State var password = ""
    
    
    var body: some View {
        VStack(alignment: .leading ,spacing: 20){
            Text("Register")
                .font(.system(size: 35, weight: .light, design: .rounded))
                .padding(.bottom, 20)
            
            TextField("email", text: $email)
            SecureField("password", text: $password)
            Button{
                
            } label: {
                Text("NEXT")
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

struct RegisterScreen_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            RegisterScreen()
        }
    }
}
