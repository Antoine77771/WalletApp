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
                .frame(width: 250, height: 250)
                .clipShape(Circle())
            Text("ANTOINE")
                .font(.system(size: 20, weight: .semibold, design: .rounded))
            Text("Guerre-Genton")
            Text("30/08/2001")
        }
    }
    
    //LISTCART
    var listCart: some View {
        ScrollView(.vertical) {
            VStack {
                ForEach(listPaperUsers) {  papers in
                    NavigationLink(destination: {
                        PapersDetailView(listPaperUsers: papers.imageName)
                    }, label: {
                        VStack {
                            Text(papers.name)
                                .padding()
                                .foregroundColor(.black)
                        }
                    })
                    
                }
            }
        }
    }
}
    
    
    
