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
    
    var body: some View {
        VStack {
            //header
            SingInUpView.header
                .padding()
            Divider()
                .background(.black)
            Spacer()
            VStack {
                TextField("Name", text: $name)
                    .padding()
                    .background(.ultraThickMaterial)
                    .cornerRadius(15)
                    .padding()
                TextField("LastName", text: $firstName)
                    .padding()
                    .background(.ultraThickMaterial)
                    .cornerRadius(15)
                    .padding()
                DatePicker("BirthDay:", selection: $birthdayDate)
                    .padding()
                    .background(.ultraThickMaterial)
                    .cornerRadius(15)
                    .padding(.all)
                TextField("Email", text: $mail)
                    .padding()
                    .background(.ultraThickMaterial)
                    .cornerRadius(15)
                    .padding()
                TextField("Passeword", text: $passewodr)
                    .padding()
                    .background(.ultraThickMaterial)
                    .cornerRadius(15)
                    .padding()
            }
            Spacer()
            Divider()
                .background(.black)
            //Button
            SingInUpView.button
        }
        .background(.mint)
    }
}

struct SingInUpView_Previews: PreviewProvider {
    static var previews: some View {
        SingInUpView()
    }
}


/* ************************** **************************************************/

extension SingInUpView {
    
    static var header: some View {
        Text("Create your account")
            .font(.system(size: 30, weight: .bold))
            .padding()
            .foregroundColor(.white)
            
            
    }
    
    static var button: some View {
        Button(action: {
            
        }, label: {
            Text("Create")
                .padding()
                .background()
                .cornerRadius(10)
                
        })

    }
   
    
    
    
    
}
