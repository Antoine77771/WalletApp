//
//  WalletAppView.swift
//  walletAPP
//
//  Created by Antoine on 21/04/2022.
//

import SwiftUI

struct WalletAppView: View {
    
    var listPaperUsers : [PaperUser]
    
    var body: some View {
        ZStack {
            VStack(spacing: 16) {
                //header
                header
                Divider()
                    .background(.white)
                
                //profils
                profils
                Divider()
                    .background(.white)
                
                //listCart
                listCart
            }
        }
        .background(.linearGradient(colors: [.black, Color("Color")],
                                    startPoint: .leading, endPoint: .trailing))
        .foregroundColor(.white)
    }
}

struct WalletAppView_Previews: PreviewProvider {
    static var previews: some View {
        WalletAppView(listPaperUsers: PaperUser.listPaperUsers)
    }
}


/* *********************************************************************************************** */

extension WalletAppView {
    //HEADER
    var header: some View {
        HStack {
            Spacer()
            Text("E-Wallet")
                .font(.system(size: 35, weight: .bold))
            Spacer()
        }
    }
    
    //PROFILS
    var profils: some View {
        VStack {
            Image("moi")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 200)
                .clipShape(Circle())
            Text("ANTOINE")
                .font(.system(size: 20, weight: .semibold, design: .rounded))
            Text("Guerre-Genton")
            Text("30/08/2001")
        }
    }
    
    //LISTCART
    var listCart: some View {
        VStack(spacing: 0.0) {
            NavigationView {
                ScrollView(.vertical) {
                    VStack {
                        ForEach(listPaperUsers) {  papers in
                            NavigationLink(destination: {
                                PapersDetailView(listPaperUsers: papers)
                            }, label: {
                                VStack {
                                    Text(papers.name)
                                        .padding(10)
                                        .foregroundColor(.white)
                                }
                            })
                        }
                    }
                }
                .navigationTitle("Vos cartes :")
                .navigationBarTitleDisplayMode(.inline)
                .frame(width: 500)
                .background(.linearGradient(colors: [.black, Color("Color")],
                            startPoint: .leading, endPoint: .trailing))
            }
            .frame(width: 400)
        }
    }
}



