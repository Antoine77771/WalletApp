//
//  ParameterView.swift
//  walletAPP
//
//  Created by Antoine on 26/04/2022.
//

import SwiftUI

struct ParameterView: View {
    
    @EnvironmentObject private var walletColor: WalletViewModel
    
    var body: some View {
        ZStack {
            walletColor.arrierePlant
                .ignoresSafeArea()
            
            VStack {
                header
                VStack(alignment: .center, spacing: 16) {
                    paletteColor
                }
            }
            
            
        }
    
    }
}

struct ParameterView_Previews: PreviewProvider {
    static var previews: some View {
        ParameterView()
            .environmentObject(WalletViewModel())
    }
}

/* ********************************************************************************** */

extension ParameterView {
    
    private var header: some View {
        HStack {
            Text("Paramètre")
                .font(.system(size: 35, weight: .bold))
                .foregroundColor(walletColor.arrierePlant == Color.black ? Color.white : Color.black)
                .padding(.leading)
            Spacer()
                
        }
    }
    
    private var paletteColor: some View {
        HStack {
            VStack(spacing: 16) {
                Spacer()
                Text("Choisissez un thème")
                    .fontWeight(.semibold)
                    .foregroundColor(walletColor.arrierePlant == Color.black ? Color.white : Color.black)
                
                HStack(alignment: .center) {
                    Spacer()
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(.black)
                        .clipShape(Circle())
                        .frame(width: 35, height: 35)
                        .shadow(radius: 5)
                        .onTapGesture {
                            walletColor.arrierePlant = Color.black
                        }
                    Spacer()
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(.yellow)
                        .clipShape(Circle())
                        .frame(width: 35, height: 35)
                        .shadow(radius: 5)
                        .onTapGesture {
                            walletColor.arrierePlant = Color.yellow
                        }
                    Spacer()
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(.red)
                        .clipShape(Circle())
                        .frame(width: 35, height: 35)
                        .shadow(radius: 5)
                        .onTapGesture {
                            walletColor.arrierePlant = Color.red
                        }
                    Spacer()
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .clipShape(Circle())
                        .frame(width: 35, height: 35)
                        .shadow(radius: 5)
                        .onTapGesture {
                            walletColor.arrierePlant = Color.white
                        }
                    Spacer()
                }
                HStack(alignment: .center) {
                    Spacer()
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(Color("Color"))
                        .clipShape(Circle())
                        .frame(width: 35, height: 35)
                        .shadow(radius: 5)
                        .onTapGesture {
                            walletColor.arrierePlant = Color("Color")
                        }
                    Spacer()
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(.green)
                        .clipShape(Circle())
                        .frame(width: 35, height: 35)
                        .shadow(radius: 5)
                        .onTapGesture {
                            walletColor.arrierePlant = Color.green
                        }
                    Spacer()
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(Color("Color-1"))
                        .clipShape(Circle())
                        .frame(width: 35, height: 35)
                        .shadow(radius: 5)
                        .onTapGesture {
                            walletColor.arrierePlant = Color("Color-1")
                        }
                    Spacer()
                    
                    Image(systemName: "circle.fill")
                        .resizable()
                        .foregroundColor(Color("Color-2"))
                        .clipShape(Circle())
                        .frame(width: 35, height: 35)
                        .shadow(radius: 5)
                        .onTapGesture {
                            walletColor.arrierePlant = Color("Color-2")
                        }
                    Spacer()
                }
                
                Spacer()
            }
        }
        .background(.ultraThickMaterial)
        .cornerRadius(15)
        .shadow(radius: 5)
        .padding()
        
    }
        
    
}
