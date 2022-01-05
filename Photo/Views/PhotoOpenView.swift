//
//  PhotoOpen.swift
//  photo
//
//  Created by Isaias Cuvula on 4.01.22.
//

import SwiftUI

struct PhotoOpenView: View {
    
    
    let gradient = LinearGradient(gradient:Gradient(colors: [Color.black.opacity(0.5), Color.clear]),startPoint: .bottom, endPoint: .top)
    
    
    //MARK: -BODY
    var body: some View {
        
        NavigationView {
            ZStack {
                
                Image("background")
                    .resizable()
                    .ignoresSafeArea()
            }
        }.overlay(alignment: .bottomLeading) {
            NavigationLink{
                ProfileScreen()
            }label: {
                OverlayNameProfileImage()
                    .frame(maxWidth:.infinity)
                    .background(gradient)
            }
            
        }
    }
}

struct OverlayNameProfileImage: View {
    
    var body: some View {
        
        HStack {
            Image("background")
                .resizable()
                .scaledToFill()
                .frame(width: 34, height: 34)
                .cornerRadius(34)
            
            
            VStack(alignment: .leading, spacing: 2) {
                Group{
                    Text("Isaias Cuvula")
                        .font(.system(size: 16,weight: .semibold, design: .rounded))
                    Text("@ICuvula")
                        .font(.subheadline)
                }
                .foregroundColor(.white)
            }
            .padding(4)
            Spacer()
            
        }
        .padding(.top, 30)
        .padding(.horizontal)
    }
    
}

struct PhotoOpenView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            PhotoOpenView()
        }
    }
}
