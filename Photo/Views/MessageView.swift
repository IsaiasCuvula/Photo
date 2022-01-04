//
//  MessageView.swift
//  photo
//
//  Created by Isaias Cuvula on 4.01.22.
//

import SwiftUI

struct MessageView: View {
    var body: some View {
        HStack {
            Image("background")
                .resizable()
                .scaledToFill()
                .frame(width: 48, height: 48)
                .cornerRadius(48)
            
            
            VStack(alignment: .leading, spacing: 2) {
                Text("Isaias Cuvula")
                    .foregroundColor(.black)
                    .font(.system(size: 18,weight: .semibold, design: .rounded))
                
                Text("Thank you! That was very helpful!")
                    .font(.subheadline)
                    .padding(.top, 5)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            }
            .padding(5)
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView()
    }
}
