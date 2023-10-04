//
//  BestPlanDetailVw.swift
//  Invest Trial
//
//  Created by Abservetech on 02/10/23.
//

import SwiftUI

struct BestPlanDetailVw: View {
    
    //MARK: - PROPERTIES :
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    VStack {
                    }.frame(height: Constant.Alignment.constraint_35)
                    NavigationTopView(Btnname: "My Asset", isNotification: false, ismenu: false)
                        .onTapGesture {
                            presentationMode.wrappedValue.dismiss()
                        }
                    Text(Constant.assetsContent)
                        .foregroundColor(Color.secondary)
                        .font(.system(size: Constant.Alignment.constraint_18))
                        .fontWeight(.medium)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .multilineTextAlignment(.leading)
                        .padding([.horizontal], Constant.Alignment.constraint_25).padding(.top, Constant.Alignment.constraint_30)
                    Text(Constant.homeBottom)   .foregroundColor(.black)
                        .font(.system(size: Constant.Alignment.constraint_35))
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .multilineTextAlignment(.leading)
                        .padding([.horizontal], Constant.Alignment.constraint_25).padding(.top, Constant.Alignment.constraint_15)
                    
                    Text(Constant.currentPlan)   .foregroundColor(.black)
                        .font(.system(size: Constant.Alignment.constraint_28))
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .multilineTextAlignment(.leading)
                        .padding([.horizontal], Constant.Alignment.constraint_25).padding(.top, Constant.Alignment.constraint_5)
                    
                    VStack {
                        Text("Gold")   .foregroundColor(.white)
                            .font(.system(size: Constant.Alignment.constraint_25))
                            .fontWeight(.bold)
                            .padding(.horizontal, Constant.Alignment.constraint_20) .frame(maxWidth: .infinity, alignment: .leading).padding(.top, Constant.Alignment.constraint_15)
                        Text("30% return")
                            .foregroundColor(Color.white)
                            .font(.system(size: Constant.Alignment.constraint_15))
                            .fontWeight(.medium)
                            .frame(maxWidth: .infinity, alignment: .leading).padding([.horizontal], Constant.Alignment.constraint_20).padding(.top, Constant.Alignment.constraint_2)
                        Spacer()
                    }.frame(maxWidth: .infinity).frame(height: 100).background(Color.yellow)
                        .cornerRadius(Constant.Alignment.constraint_20).padding()
                    
                }
            }
        }
    }
}

struct BestPlanDetailVw_Previews: PreviewProvider {
    static var previews: some View {
        BestPlanDetailVw()
    }
}
