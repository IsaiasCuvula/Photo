//
//  SendMessageView.swift
//  photo
//
//  Created by Isaias Cuvula on 4.01.22.
//

import SwiftUI

struct SendMessageView: View {
    
    @State var messageText = ""
    
    
    //MARK: - BODY
    var body: some View {
        VStack(spacing: 10){
            ScrollView(.vertical) {
                ForEach(1..<20, id:\.self){num in
                    
                    if num.isMultiple(of: 2) {
                        
                        HStack(alignment:.top){
                            
                            Text("A fast 50 mm like f1.8 would help with the bokeh. I've been using primes as they tend to get a bit sharper images.")
                                .padding(8)
                                .background(Color("lightGrayy"))
                                .cornerRadius(8)
                            
                            Image("background")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 24, height: 24)
                                .cornerRadius(24)
                                .padding(.bottom, 18)
                        }
                        
                    }else {
                        HStack(alignment:.top){
                            Image("background")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 24, height: 24)
                                .cornerRadius(24)
                            
                            
                            Text("Really love your most recent photo. I've been trying to capture the same thing for a few months and would love some tips!")
                                .padding(8)
                                .background(Color("lightGrayy"))
                                .cornerRadius(8)
                        }
                        .padding(.bottom)
                        .padding(.top)
                    }
                }
                
                Spacer()
            }
            .navigationTitle("Isaias")
            .navigationBarTitleDisplayMode(.inline)
       
            
            
            HStack{
                
                Button{
                    //
                }label: {
                    Image(systemName: "photo.on.rectangle")
                }
                
                TextField("Message", text: $messageText)
                Button{
                    
                }label: {
                    
                    Image(systemName: "paperplane.fill")
                    
                }
                
            }
            .padding(10)
            .background(Color("lightGrayy"))
            .cornerRadius(8)
            
        }
        .padding()
        
    }
}

struct SendMessageView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            SendMessageView()
        }
    }
}
