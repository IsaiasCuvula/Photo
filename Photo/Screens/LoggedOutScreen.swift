//
//  ContentView.swift
//  photo
//
//  Created by Isaias Cuvula on 3.01.22.
//

import SwiftUI

struct LoggedOutScreen: View {
    var body: some View {
        VStack{
            ZStack{
                Image("background")
                    .resizable()
                Image("photoLogo")
            }//ZSATCK
            
            HStack(spacing: 4){
                Button{
                    
                    //LoginScreen()
                    
                } label: {
                    Text("LOG IN")
                        .modifier(ButtonWithStroke())
                }
                
                
                Spacer()
                
                Button{
                    
                    //RegisterScreen()
                    
                } label: {
                    CustomText(text: "REGISTER")
                }
                
                
                
            }//HSTACK
            .padding(.vertical, 40)
            .padding(.horizontal, 20)
            
            
        }//VSTACK
        .padding(0)
        .ignoresSafeArea()
    }
}

struct LoggedOutScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoggedOutScreen()
    }
}
