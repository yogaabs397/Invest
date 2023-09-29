//
//  BankListTvw.swift
//  Invest Trial
//
//  Created by  on 27/09/23.
//

import SwiftUI

struct BankListTvw: View {
    var body: some View {
        HStack {
            Image(Image.banklogo()).resizable().frame(width: Constant.Alignment.constraint_80,height: Constant.Alignment.constraint_80).cornerRadius(Constant.Alignment.constraint_15)
            
            HStack {
                VStack(alignment: .leading,spacing: Constant.Alignment.constraint_5) {
                    Text(Constant.banklistTopTitle)
                        .foregroundColor(Color.lightGray())
                        .font(.system(size: Constant.Alignment.constraint_20))
                        .fontWeight(.semibold)
                    Text(Constant.banklistsubTitle)
                        .foregroundColor(Color.lightGray())
                        .font(.system(size: Constant.Alignment.constraint_15))
                        .fontWeight(.regular)
                }.padding(.leading, Constant.Alignment.constraint_5)
                VStack {
                    Image(Image.sidemenu()).resizable().frame(width: Constant.Alignment.constraint_5, height: Constant.Alignment.constraint_20)
                    Spacer()
                }.frame(width: Constant.Alignment.constraint_40)
            }
        }.contentShape(Rectangle())
            .frame(height: Constant.Alignment.constraint_110).background(Color.white
                .shadow(color: Color.white, radius: Constant.Alignment.constraint_10, x: 0, y: 0)
              )
    }
}

struct BankListTvw_Previews: PreviewProvider {
    static var previews: some View {
        BankListTvw()
    }
}
