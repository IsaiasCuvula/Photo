//
//  CustomModifier.swift
//  photo
//
//  Created by Isaias Cuvula on 4.01.22.
//

import SwiftUI


struct CustomText: View {
    
    let text: String
    
    var body: some View {
        Text(text)
            .padding()
            .font(.system(size: 18, weight: .bold, design: .rounded))
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0)
            .foregroundColor(.white)
            .background(.black)
            .cornerRadius(8)
    }
    
}

