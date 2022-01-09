//
//  ContentView.swift
//  photo
//
//  Created by Isaias Cuvula on 3.01.22.
//

import SwiftUI

struct LoggedOutScreen: View {
    
    @ObservedObject private var vm = UserDataViewModel()
    
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            VStack{
                ZStack{
                    Rectangle()
                        .foregroundColor(Color("blueBackground"))
                    Image("photoLogo")
                }//ZSATCK
                
                HStack(spacing: 4){
                    NavigationLink{
                       LoginScreen()
                    } label: {
                        Text("LOG IN")
                            .modifier(ButtonWithStroke())
                    }
                    
                    Spacer()
                    
                    NavigationLink{
                        RegisterScreen()
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
    
}

struct LoggedOutScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoggedOutScreen()
    }
}
