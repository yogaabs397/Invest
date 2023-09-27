//
//  BestPlansCvw.swift
//  Invest Trial
//
//  Created by Abservetech on 27/09/23.
//

import SwiftUI

struct BestPlansCvw: View {
    
    //MARK: - PROPERTIES :
    var subcatName = String()
    var body: some View {
        HStack {
            VStack(spacing: 2) {
                Text("Gold")   .foregroundColor(.white)
                    .font(.system(size: 27))
                    .fontWeight(.bold)
                    .padding(.horizontal, 20) .frame(maxWidth: .infinity, alignment: .leading).padding(.top, 15)
                Text("30% return")
                    .foregroundColor(Color.white)
                    .font(.system(size: 15))
                    .fontWeight(.medium)
                    .frame(maxWidth: .infinity, alignment: .leading).padding([.horizontal], 20).padding(.top, 2)
                Spacer()
            }.background(.yellow)
        }.contentShape(Rectangle())
            .frame(width: 180)
            .frame(height: 200)
            .background(Color.appColor())
            .cornerRadius(20)
    }
}

struct BestPlansCvw_Previews: PreviewProvider {
    static var previews: some View {
        BestPlansCvw()
    }
}