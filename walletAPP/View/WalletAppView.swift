//
//  WalletAppView.swift
//  walletAPP
//
//  Created by Antoine on 21/04/2022.
//

import SwiftUI

struct WalletAppView: View {
    
    var listPaperUsers : [PaperUser]
    @EnvironmentObject private var walletColor: WalletViewModel
    
    var body: some View {
        ZStack {
            //probleme en simulation sur iphone
            walletColor.arrierePlant
                .ignoresSafeArea()
            VStack(spacing: 16) {
                //header
                header
                Divider()
                    .background(.black)
                
                //profils
                profils
                Divider()
                    .background(.black)
                
                //listCart
                listCart
            }
        }
        
        
    }
}

struct WalletAppView_Previews: PreviewProvider {
    static var previews: some View {
        WalletAppView(listPaperUsers: PaperUser.listPaperUsers)
            .environmentObject(WalletViewModel().self)
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
                .shadow(radius: 5)
            Text("ANTOINE")
                .font(.system(size: 20, weight: .semibold, design: .rounded))
            Text("Guerre-Genton")
            Text("30/08/2001")
        }
    }
    
    //LISTCART
    var listCart: some View {
        NavigationView {
            List {
                ForEach(listPaperUsers) { Paper in
                    NavigationLink(destination: PapersDetailView(listPaperUsers: Paper)) {
                        Text(Paper.name)
                    }.padding()
                }
                .navigationTitle("Vos cartes")
            }
        }
    }
}



