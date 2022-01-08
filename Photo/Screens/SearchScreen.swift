//
//  SearchScreen.swift
//  photo
//
//  Created by Isaias Cuvula on 4.01.22.
//

import SwiftUI

struct SearchScreen: View {
    
    @State var searchQuery = ""
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading ,spacing: 20){
            
            CustomNavBarTitle(text: "Search")
           
            TextField("Search all photos", text: $searchQuery)
                .padding()
                .foregroundColor(.black)
                .overlay(RoundedRectangle(cornerRadius: 0).stroke(lineWidth: 3))
            
            Spacer()
            
        }
        .padding()
        .navigationBarHidden(true)
    }
}

struct SearchScreen_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            SearchScreen()
        }
    }
}
