//
//  PhotoOpen.swift
//  photo
//
//  Created by Isaias Cuvula on 4.01.22.
//

import SwiftUI

struct PhotoOpenView: View {
    var body: some View {
        
        ZStack {
            
            Image("background")
                .resizable()
            
            HStack {
                
                Image("background")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 42, height: 42)
                    .cornerRadius(42)
                
                
                VStack(alignment: .leading, spacing: 2) {
                    Text("Isaias Cuvula")
                        .foregroundColor(.black)
                        .font(.system(size: 16,weight: .semibold, design: .rounded))
                    Text("@ICuvula")
                        .font(.subheadline)
                }
                .padding(5)
            }
            .padding()
        }.ignoresSafeArea()
    }
}

struct PhotoOpenView_Previews: PreviewProvider {
    static var previews: some View {
            PhotoOpenView()
    }
}
