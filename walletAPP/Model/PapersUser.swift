//
//  PapersUser.swift
//  walletAPP
//
//  Created by Antoine on 23/02/2022.
//

import Foundation
import SwiftUI


struct PaperUser : Identifiable {
    var id = UUID()
    var name: String
    var imageName: String
   
}


extension PaperUser {
    
    static let listPaperUsers: [PaperUser] = [
        PaperUser(name: "Carte d'identiter", imageName: "mo"),
        PaperUser(name: "Permis de conduire", imageName: ""),
        PaperUser(name: "Assurance voiture", imageName: ""),
        PaperUser(name: "Carte grise", imageName: ""),
        PaperUser(name: "Carte mutuelle", imageName: ""),
    ]
}
