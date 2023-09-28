//
//  BankListTvw.swift
//  Invest Trial
//
//  Created by Abservetech on 27/09/23.
//

import SwiftUI

struct BankListTvw: View {
    var body: some View {
        HStack {
            Image("banklogo").resizable().frame(width: 80,height: 80).cornerRadius(15)
            
            HStack {
                VStack(alignment: .leading,spacing: 5) {
                    Text("Bank of Amrica - 0182128")
                        .foregroundColor(Color.lightGray())
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                    Text("Jonas Macroni")
                        .foregroundColor(Color.lightGray())
                        .font(.system(size: 15))
                        .fontWeight(.regular)
                }.padding(.leading, 5)
                VStack {
                    Image("sidemenu").resizable().frame(width: 5, height: 20)
                    Spacer()
                }.frame(width: 40)
            }
        }.contentShape(Rectangle())
            .frame(height: 110).background(Color.white
                .shadow(color: Color.white, radius: 10, x: 0, y: 0)
              )
    }
}

struct BankListTvw_Previews: PreviewProvider {
    static var previews: some View {
        BankListTvw()
    }
}
