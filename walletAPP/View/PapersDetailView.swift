//
//  PapersDetailView.swift
//  walletAPP
//
//  Created by Antoine on 23/02/2022.
//

import SwiftUI

struct PapersDetailView: View {
    
    var listPaperUsers : PaperUser
    
    var body: some View {
        VStack {
            Image(listPaperUsers.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
        }
        
    }
}

struct PapersDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PapersDetailView(listPaperUsers: PaperUser.listPaperUsers.first!)
    }
}
