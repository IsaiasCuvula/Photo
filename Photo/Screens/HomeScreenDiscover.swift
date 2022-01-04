//
//  HomeScreenDiscover.swift
//  photo
//
//  Created by Isaias Cuvula on 4.01.22.
//

import SwiftUI

struct HomeScreenDiscover: View {
    
    var columns: [GridItem] {
        Array(repeating: .init(.flexible(minimum: 120)), count: 2)
    }
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 10){
                Text("Discover")
                    .font(.system(size: 35, weight: .regular, design: .rounded))
                    .padding(.bottom, 30)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading){
                        
                        Text("WHAT'S NEW TODAY")
                            .font(.system(size: 16, weight: .bold, design: .rounded))
                            .padding(.bottom, 15)
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                ForEach(0..<20, id: \.self){ num in
                                    NewPhotoTodayView()
                                }
                            }
                        }
                        .padding(.bottom, 40)
                        
                        Text("BROWSE ALL")
                            .font(.system(size: 16, weight: .bold, design: .rounded))
                            .padding(.bottom, 15)
                        
                        
                        LazyVGrid(columns: columns) {
                            ForEach(0..<20, id: \.self){ num in
                                Image("background")
                                    .resizable()
                                    .scaledToFill()
                            }
                        }
                    }
                }//VSTACK
            }
            .padding()
            .navigationBarHidden(true)
        }
        
    }
}

struct HomeScreenDiscover_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenDiscover()
    }
}
