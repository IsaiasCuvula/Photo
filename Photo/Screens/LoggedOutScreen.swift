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
                        .foregroundColor(.black)
                        .font(.system(size: 16,weight: .bold, design: .rounded))
                }
                .padding()
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0)
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(lineWidth: 2))
                
                Spacer()
                
                Button{
                    
                    //RegisterScreen()
                    
                } label: {
                    Text("REGISTER")
                        .foregroundColor(.white)
                        .font(.system(size: 16,weight: .bold, design: .rounded))
                }
                .padding()
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0)
                .background(.black)
                .cornerRadius(8)
                
                
            }//HSTACK
            .padding(.vertical, 40)
            .padding(.horizontal, 16)
            
            
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
