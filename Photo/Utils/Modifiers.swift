//
//  Constants.swift
//  photo
//
//  Created by Isaias Cuvula on 4.01.22.
//

import SwiftUI



struct ButtonWithStroke: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .padding()
            .foregroundColor(.black)
            .font(.system(size: 16,weight: .bold, design: .rounded))
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0)
            .overlay(RoundedRectangle(cornerRadius: 8).stroke( Color.black, lineWidth: 2))
    }
    
}



struct StrokeForTextField: ViewModifier{
    
    func body(content: Content) -> some View {
        content
            .padding()
            .foregroundColor(.black)
            .overlay(RoundedRectangle(cornerRadius: 0).stroke(lineWidth: 3))
        
    }
    
}



struct CustomText: View {
    
    let text: String
    
    var body: some View {
        Text(text)
            .padding()
            .font(.system(size: 16, weight: .bold, design: .rounded))
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0)
            .foregroundColor(.white)
            .background(.black)
            .cornerRadius(8)
    }
    
}

struct CustomNavBarTitle: View {
    
    let text: String
    
    var body: some View {
        Text(text)
            .font(.system(size: 35, weight: .regular, design: .rounded))
            .padding(.bottom, 20)
    }
    
}




