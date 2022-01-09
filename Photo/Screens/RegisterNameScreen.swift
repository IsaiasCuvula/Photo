//
//  RegisterNameScreen.swift
//  photo
//
//  Created by Isaias Cuvula on 4.01.22.
//

import SwiftUI

struct RegisterNameScreen: View {
    
    @State var name = ""
    @Environment(\.presentationMode) var presentationMode
    @State private var isPresented = false
    @State private var showAlert = false
    
    var body: some View {
        VStack(alignment: .leading ,spacing: 20){
            
            Button{
                self.presentationMode.wrappedValue.dismiss()
            }label: {
                HStack{
                    Image(systemName: "chevron.backward")
                    Text("Back")
                }
            }
            CustomNavBarTitle(text: "Register")
            
            TextField("name", text: $name)
                .modifier(StrokeForTextField())
            
            
            Button{
                if name != "" {
                    self.isPresented.toggle()
                }else {
                    self.showAlert = true
                }
            } label: {
                CustomText(text: "SIGN UP")
            }
            
            Text("By signing up, you agree to Photo's Terms of service and Privacy Policy.")
                .font(.body)
            
            Spacer()
            
        }
        .fullScreenCover(isPresented: $isPresented, onDismiss: nil, content: MainView.init)
        .alert(isPresented: $showAlert){
            Alert(title: Text("Invalid Name"), message: Text("Add a valid name!"), dismissButton: .default(Text("OK")))
        }
        .padding()
    }
}

struct RegisterNameScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegisterNameScreen()
    }
}
