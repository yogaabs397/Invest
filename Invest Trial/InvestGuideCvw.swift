//
//  InvestGuideCvw.swift
//  Invest Trial
//
//  Created by  on 27/09/23.
//

import SwiftUI
import SDWebImageSwiftUI


struct InvestGuideCvw: View {

    //MARK: - PROPERTIES :
    var investData = InvestModel()
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(investData.email)
                    .foregroundColor(Color.lightGray())
                    .font(.system(size: Constant.Alignment.constraint_22))
                    .fontWeight(.bold)
                   .padding(.top, Constant.Alignment.constraint_5)
                Text(Constant.investGuidesubtitle)
                    .foregroundColor(Color.subtitleColor())
                    .font(.system(size: Constant.Alignment.constraint_18))
                    .fontWeight(.regular)
                   .padding(.top, Constant.Alignment.constraint_2)

            }.padding()
            
            WebImage(url: URL(string: investData.avatar))
            .onSuccess { image, data, cacheType in
            }.resizable().frame(width: Constant.Alignment.constraint_80,height: Constant.Alignment.constraint_80).cornerRadius(Constant.Alignment.constraint_40).padding(.trailing, Constant.Alignment.constraint_10)
            
        }.contentShape(Rectangle())
            .frame(maxWidth: .infinity)
            .frame(height: Constant.Alignment.constraint_125).padding([.horizontal], Constant.Alignment.constraint_10)
           
    }
}

struct InvestGuideCvw_Previews: PreviewProvider {
    static var previews: some View {
        InvestGuideCvw()
    }
}
