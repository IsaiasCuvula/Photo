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
                        .padding()
                        .foregroundColor(.black)
                        .font(.system(size: 16,weight: .bold, design: .rounded))
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0)
                        .overlay(RoundedRectangle(cornerRadius: 8).stroke( Color.black, lineWidth: 2))
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
