//
//  BankListVw.swift
//  Invest Trial
//
//  Created by Abservetech on 27/09/23.
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
                    }.frame(height: 35)
                    NavigationTopView(Btnname: Constant.banktitle, isNotification: false, ismenu: false)
                        .onTapGesture {
                            presentationMode.wrappedValue.dismiss()
                        }
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
