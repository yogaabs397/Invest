//
//  BankListVw.swift
//  Invest Trial
//
//  Created by  on 27/09/23.
//

import SwiftUI

struct BankListVw: View {
    
    //MARK: - PROPERTIES :
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    VStack {
                    }.frame(height: Constant.Alignment.constraint_35)
                    NavigationTopView(Btnname: Constant.banktitle, isNotification: false, ismenu: false)
                        .onTapGesture {
                            presentationMode.wrappedValue.dismiss()
                        }
                    ScrollView(.vertical) {
                        VStack(spacing: Constant.Alignment.constraint_10) {
                            ForEach (0..<10, id: \.self) { i in
                                BankListTvw()
                                Divider().background(.secondary)
                            }
                        }.padding(.top, Constant.Alignment.constraint_10).padding(.horizontal, Constant.Alignment.constraint_5)
                    }.scrollIndicators(.hidden).padding()
                }
            }
        }
    }
}

struct BankListVw_Previews: PreviewProvider {
    static var previews: some View {
        BankListVw()
    }
}
