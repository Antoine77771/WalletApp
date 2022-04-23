//
//  LoginView.swift
//  walletAPP
//
//  Created by Antoine on 24/02/2022.
//

import SwiftUI

struct LoginView: View {
    
    @State var userName: String = ""
    @State var lastName: String = ""
    @State var passeword: String = ""
    @State var isSignView = false
    
    
    var body: some View {
        ZStack {
            VStack(alignment: .center, spacing: 16) {
                Spacer()
                Text("Login")
                    .font(.system(size: 50, weight: .bold, design: .rounded))
                    .padding(.horizontal)
               Divider()
                VStack(alignment: .center, spacing: 20) {
                    Form {
                        Section() {
                            TextField("Prenom", text: $userName)
                        }
                        Section() {
                            TextField("Nom", text: $lastName)
                        }
                        Section() {
                            SecureField("Passeword", text: $passeword)
                        }
                        
                    }
                    
                    
                }
            
                Spacer()
                .cornerRadius(10)
                Button(action: {
                    
                }, label: {
                    Text("Connexion")
                })
                    .padding()
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(15)
                    
                Button(action: {
                    isSignView.toggle()
                }, label: {
                    Text("Not accont yet ?")
                })
                .sheet(isPresented: $isSignView, content: {
                    SingInUpView()
                })
            }
        }
    
        
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
