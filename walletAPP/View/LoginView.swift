//
//  LoginView.swift
//  walletAPP
//
//  Created by Antoine on 24/02/2022.
//

import SwiftUI

struct LoginView: View {
    
    @State var userName: String = ""
    @State var password: String = ""
    @State var isSignView = false
    @EnvironmentObject private var walletColor: WalletViewModel
    
    var body: some View {
        ZStack {
            walletColor.arrierePlant
                .ignoresSafeArea()
            VStack(alignment: .center, spacing: 16) {
                Spacer()
                Text("Hello, you!")
                    .foregroundColor(walletColor.arrierePlant == Color.black ? Color.white : Color.black)
                    .font(.system(size: 40, weight: .semibold))
                    .shadow(radius: 2)
                    Divider()
                Spacer()
                TextField("Username", text: $userName)
                    .padding()
                    .background(.ultraThickMaterial)
                    .cornerRadius(25)
                    .shadow(radius: 5)
                SecureField("Password", text: $password)
                    .padding()
                    .background(.ultraThickMaterial)
                    .cornerRadius(25)
                    .shadow(radius: 5)
                Spacer()
                Button(action: {
                    
                }, label: {
                    Text("Signup ")
                })
                .padding()
                .padding(.leading, 20)
                .padding(.trailing, 20)
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(.white)
                .background(.blue)
                .cornerRadius(50)
                
                Button(action: {
                    isSignView.toggle()
                }, label: {
                    Text("Not accont yet ?")
                        .foregroundColor(.blue)
                        .fontWeight(.semibold)
                })
                .sheet(isPresented: $isSignView, content: {
                    SingInUpView()
                })
                Spacer()
             }
            .padding()
            }
        }
        
    }


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .environmentObject(WalletViewModel())
    }
}
