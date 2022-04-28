//
//  SingInUpView.swift
//  walletAPP
//
//  Created by Antoine on 18/04/2022.
//

import SwiftUI

struct SingInUpView: View {
    
    @State private var name: String = ""
    @State private var firstName: String = ""
    @State private var birthdayDate = Date()
    @State private var mail: String = ""
    @State private var passewodr: String = ""
    @EnvironmentObject private var walletColor: WalletViewModel
    
    var body: some View {
        ZStack {
            walletColor.arrierePlant
                .ignoresSafeArea()
            VStack(spacing: 20) {
                Spacer()
                Text("Creat your accunt !")
                    .foregroundColor(walletColor.arrierePlant == Color.black ? Color.white : Color.black)
                    .font(.system(size: 40, weight: .regular))
                    .shadow(radius: 2)
                
                Divider()
                Spacer()
                
                TextField("Name", text: $name)
                    .padding()
                    .background(.ultraThickMaterial)
                    .cornerRadius(25)
                    .shadow(radius: 5)
                
                TextField("LastName", text: $firstName)
                    .padding()
                    .background(.ultraThickMaterial)
                    .cornerRadius(25)
                    .shadow(radius: 5)
                
                TextField("Email", text: $mail)
                    .padding()
                    .background(.ultraThickMaterial)
                    .cornerRadius(25)
                    .shadow(radius: 5)
                
                SecureField("Passeword", text: $passewodr)
                    .padding()
                    .background(.ultraThickMaterial)
                    .cornerRadius(25)
                    .shadow(radius: 5)
                
                DatePicker("BirthDay:", selection: $birthdayDate)
                    .padding()
                    .background(.ultraThickMaterial)
                    .cornerRadius(25)
                    .shadow(radius: 5)
                

                    HStack {
                    Button(action: {
                        
                    }, label: {
                        Text("Started")
                            .padding()
                            .padding(.leading, 20)
                            .padding(.trailing, 20)
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.white)
                            .background(.green)
                            .cornerRadius(50)
                    })
                }
                    .padding()
            }
            .padding()
        }
        
    }
}

struct SingInUpView_Previews: PreviewProvider {
    static var previews: some View {
        SingInUpView()
            .environmentObject(WalletViewModel())
    }
}

