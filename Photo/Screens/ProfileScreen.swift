//
//  ProfileScreen.swift
//  photo
//
//  Created by Isaias Cuvula on 4.01.22.
//

import SwiftUI

struct ProfileScreen: View {
    
    let name = "Isaias"
    var columns: [GridItem] {
        Array(repeating: .init(.flexible(minimum: 120)), count: 2)
    }
    
    //MARK: - BODY
    var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: .center , spacing: 20) {
                    Image("background")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 120, height: 120)
                        .cornerRadius(120)
                    
                    Text(name)
                        .font(.system(size: 35, design: .rounded))
                    
                    Text("SAN FRANCISCO, CA")
                        .font(.system(size: 16, weight: .semibold, design: .rounded))
                        .padding(.bottom, 20)
                    
                    Button{
                        //Follow action
                    } label: {
                        CustomText(text: "FALLOW \(name.uppercased())")
                    }
                    
                    NavigationLink{
                        SendMessageView()
                    } label: {
                        Text("MESSAGE")
                            .modifier(ButtonWithStroke())
                    }
                    Spacer()
                    
                    LazyVGrid(columns: columns) {
                        ForEach(0..<20, id: \.self){ num in
                            NavigationLink{
                                PhotoOpenView()
                            } label: {
                                SimplePhotoView()
                            }
                        }
                    }
                }
                .padding(.horizontal)
            }
        }.navigationBarHidden(true)
        
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ProfileScreen()
        }
    }
}
