//
//  SimplePhotoView.swift
//  photo
//
//  Created by Isaias Cuvula on 8.01.22.
//

import SwiftUI

struct SimplePhotoView: View {
    var body: some View {
        Image("background")
            .resizable()
            .scaledToFill()
            .cornerRadius(8)
    }
}

struct SimplePhotoView_Previews: PreviewProvider {
    static var previews: some View {
        SimplePhotoView()
    }
}
