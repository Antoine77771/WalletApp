//
//  ContentView.swift
//  walletAPP
//
//  Created by Antoine on 23/02/2022.
//

import SwiftUI

struct ContentView: View {
    
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.systemGray5
    }
    
    
    var body: some View {
        TabView {
            WalletAppView(listPaperUsers: PaperUser.listPaperUsers)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            LoginView()
                .tabItem {
                    Image(systemName: "tray.and.arrow.down.fill")
                    Text("connect")
                }
        }
    }
    
    
    
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
