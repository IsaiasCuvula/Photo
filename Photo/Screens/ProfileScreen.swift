//
//  ProfileScreen.swift
//  photo
//
//  Created by Isaias Cuvula on 4.01.22.
//

import SwiftUI

struct ProfileScreen: View {
    
    //let name = "Isaias"
    var columns: [GridItem] {
        Array(repeating: .init(.flexible(minimum: 120)), count: 2)
    }
    @State var logOut = false
    @ObservedObject private var vm = UserDataViewModel()
    
    //MARK: - BODY
    var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: .center , spacing: 20) {
                    Image("background")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 120, height: 120)
                        .cornerRadius(120)
                    
                    Text(vm.user?.name ?? "")
                        .font(.system(size: 35, design: .rounded))
                    
                    Text("SAN FRANCISCO, CA")
                        .font(.system(size: 16, weight: .semibold, design: .rounded))
                        .padding(.bottom, 20)
                    
                    Button{
                        //Follow action
                    } label: {
                        CustomText(text: "FALLOW \(vm.user?.name.uppercased() ?? "")")
                    }
                    
                    NavigationLink{
                        SendMessageView()
                    } label: {
                        Text("MESSAGE")
                            .modifier(ButtonWithStroke())
                    }
                    
                    Button{
                        logOut.toggle()
                    } label: {
                        Text("LOG OUT")
                            .modifier(ButtonWithStroke())
                    }
                    
                    Spacer()
                    
                    LazyVGrid(columns: columns) {
                        ForEach(0..<20, id: \.self){ num in
                            NavigationLink{
                                PhotoOpenView()
                            } label: {
                                SimplePhotoView()
                            }
                        }
                    }
                }
                .padding(.horizontal)
                .confirmationDialog("Log Out", isPresented: $logOut) {
                    
                    Button{
                        vm.signOut()
                        self.vm.isUserLogedOut = false
                    }label: {
                        Text("Log Out \(vm.user?.name ?? "")")
                    }
                }
                .fullScreenCover(isPresented: $vm.isUserLogedOut, onDismiss: nil) {
                    LoggedOutScreen()
                }
            }
        }.navigationBarHidden(true)
        
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ProfileScreen()
        }
    }
}
