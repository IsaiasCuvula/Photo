//
//  NewPhotoTodayView.swift
//  photo
//
//  Created by Isaias Cuvula on 4.01.22.
//

import SwiftUI

struct NewPhotoTodayView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            
            Image("background")
                .resizable()
                .frame(maxWidth: .infinity, minHeight: 200 ,maxHeight: 350)
            
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
                    Text("@ICuvula")
                        .font(.subheadline)
                }
                .padding(5)
            }
            .padding(.vertical)
        }
        
    }
}

struct NewPhotoTodayView_Previews: PreviewProvider {
    static var previews: some View {
        NewPhotoTodayView()
    }
}
