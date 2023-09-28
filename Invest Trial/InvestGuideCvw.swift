//
//  InvestGuideCvw.swift
//  Invest Trial
//
//  Created by Abservetech on 27/09/23.
//

import SwiftUI
import SDWebImageSwiftUI


struct InvestGuideCvw: View {

    //MARK: - PROPERTIES :
    
//    var titleVal  = String()
//    var subtitleVal = String()
    var investData = InvestModel()
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(investData.email)
                    .foregroundColor(Color.lightGray())
                    .font(.system(size: 22))
                    .fontWeight(.bold)
                   .padding(.top, 5)
                Text("This is how you set your foot for 2020 Stock market recession. What’s next...")
                    .foregroundColor(Color.subtitleColor())
                    .font(.system(size: 18))
                    .fontWeight(.regular)
                   .padding(.top, 2)

            }.padding()
            
            WebImage(url: URL(string: investData.avatar))
            .onSuccess { image, data, cacheType in
            }.resizable().frame(width: 80,height: 80).cornerRadius(40).padding(.trailing, 10)
            
        }.contentShape(Rectangle())
            .frame(maxWidth: .infinity)
            .frame(height: 125).padding([.horizontal], 10)
           
    }
}

struct InvestGuideCvw_Previews: PreviewProvider {
    static var previews: some View {
        InvestGuideCvw()
    }
}
