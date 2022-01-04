//
//  MessageScreen.swift
//  photo
//
//  Created by Isaias Cuvula on 4.01.22.
//

import SwiftUI

struct MessageScreen: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                
                CustomNavBarTitle(text: "Chats")
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading) {
                        ForEach(0..<20, id: \.self){ num in
                            NavigationLink {
                               SendMessageView()
                            }label: {
                                MessageView()
                            }
                            
                            Divider()
                        }
                        
                    }
                }
            }
            .padding()
            .navigationBarHidden(true)
        }
    }
}

struct MessageScreen_Previews: PreviewProvider {
    static var previews: some View {
        MessageScreen()
    }
}
