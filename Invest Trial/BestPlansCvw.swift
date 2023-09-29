//
//  BestPlansCvw.swift
//  Invest Trial
//
//  Created by  on 27/09/23.
//

import SwiftUI

struct BestPlansCvw: View {
    
    //MARK: - PROPERTIES :
    var bestPlans = InvestModel()
    
    var body: some View {
        HStack {
            VStack(spacing: Constant.Alignment.constraint_2) {
                Text(bestPlans.name)   .foregroundColor(.white)
                    .font(.system(size: Constant.Alignment.constraint_25))
                    .fontWeight(.bold)
                    .padding(.horizontal, Constant.Alignment.constraint_20) .frame(maxWidth: .infinity, alignment: .leading).padding(.top, Constant.Alignment.constraint_15)
                Text(bestPlans.year.description)
                    .foregroundColor(Color.white)
                    .font(.system(size: Constant.Alignment.constraint_15))
                    .fontWeight(.medium)
                    .frame(maxWidth: .infinity, alignment: .leading).padding([.horizontal], Constant.Alignment.constraint_20).padding(.top, Constant.Alignment.constraint_2)
                Spacer()
            }.background(.yellow)
        }.contentShape(Rectangle())
            .frame(width: Constant.Alignment.constraint_180)
            .frame(height: Constant.Alignment.constraint_200)
            .background(Color.appColor())
            .cornerRadius(Constant.Alignment.constraint_20)
    }
}

struct BestPlansCvw_Previews: PreviewProvider {
    static var previews: some View {
        BestPlansCvw()
    }
}
