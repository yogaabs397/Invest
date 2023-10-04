//
//  HomeDetailVw.swift
//  Invest Trial
//
//  Created by  on 27/09/23.
//

import SwiftUI

enum InvestSubtype {
    case bestplan
    case investmentGuide
}

struct HomeDetailVw: View {
    
    // MARK: - PROPERTIES :
    @Environment(\.presentationMode) var presentationMode
    @StateObject var investguide = InvestVm()
    @StateObject var bestPlan = InvestVm()
   
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    VStack {
                    }.frame(height: Constant.Alignment.constraint_35)
                    NavigationTopView(Btnname: "", isNotification: true, ismenu: true)
                        .onTapGesture {
                            presentationMode.wrappedValue.dismiss()
                        }
                    Text(Constant.welcomeContent)   .foregroundColor(.black)
                        .font(.system(size: Constant.Alignment.constraint_27))
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .multilineTextAlignment(.leading)
                        .padding(.vertical, Constant.Alignment.constraint_20).padding(.horizontal, Constant.Alignment.constraint_30)
                    VStack(alignment: .leading, spacing: 0) {
                        Text(Constant.homeContent)
                            .foregroundColor(Color.white)
                            .font(.system(size: Constant.Alignment.constraint_18))
                            .fontWeight(.medium)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding([.horizontal], Constant.Alignment.constraint_25).padding(.top, Constant.Alignment.constraint_30)
                        HStack {
                            Text(Constant.homeBottom)   .foregroundColor(.white)
                                .font(.system(size: Constant.Alignment.constraint_28))
                                .fontWeight(.bold).padding(.leading, Constant.Alignment.constraint_15)
                            Spacer()
                            Button(action: {
                            }) {
                                Text(Constant.investNow)
                                    .fontWeight(.medium)
                                    .font(.headline)
                                    .font(.system(size: Constant.Alignment.constraint_14))
                                    .foregroundColor(Color.appColor()).background(.white)
                            }.contentShape(Rectangle())
                                .frame(minWidth: 0, maxWidth: Constant.Alignment.constraint_90,maxHeight: Constant.Alignment.constraint_10)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(Constant.Alignment.constraint_15)
                                .shadow(radius: Constant.Alignment.constraint_2, y: Constant.Alignment.constraint_2)
                                .padding()
                            
                        }.padding([.top, .leading], Constant.Alignment.constraint_15)
                    } .contentShape(Rectangle())
                        .frame(maxWidth: .infinity)
                        .frame(height: Constant.Alignment.constraint_150)
                        .background(Color.appColor())
                        .cornerRadius(Constant.Alignment.constraint_20)
                        .padding(.horizontal, Constant.Alignment.constraint_25)
                    HStack {
                        Text(Constant.bestPlan)   .foregroundColor(.black)
                            .font(.system(size: Constant.Alignment.constraint_25))
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .multilineTextAlignment(.leading).padding([.leading, .top], Constant.Alignment.constraint_30)
                        Spacer()
                        Text(Constant.seeAll)
                            .foregroundColor(Color.red)
                            .font(.system(size: Constant.Alignment.constraint_18))
                            .fontWeight(.medium)
                            .padding([.trailing, .top], Constant.Alignment.constraint_30)
                    }
                    
                    ScrollView(.horizontal) {
                        LazyHStack(spacing: Constant.Alignment.constraint_15) {
                            ForEach (0..<investguide.bestData.count, id: \.self) { i in
                                BestPlansCvw(bestPlans: investguide.bestData[i])
                            }
                        }
                    }.padding().scrollIndicators(.hidden)
                    
                    VStack(spacing: 1) {
                        Text(Constant.investGuide)   .foregroundColor(.black)
                            .font(.system(size: Constant.Alignment.constraint_25))
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .multilineTextAlignment(.leading).padding(.leading, Constant.Alignment.constraint_30).padding(.top, Constant.Alignment.constraint_10)
                        
                        ScrollView(.vertical) {
                            VStack(spacing: Constant.Alignment.constraint_10) {
                                ForEach (0..<investguide.investData.count, id: \.self) { i in
                                    InvestGuideCvw(investData: investguide.investData[i])
                                    Divider().background(.secondary)
                                }
                            }.padding(.top, Constant.Alignment.constraint_10)
                           
                        }.scrollIndicators(.hidden)
                    }
                }
            }.scrollIndicators(.hidden)
        }.onAppear {
            investguide.investApi(with:  .bestplan)
            investguide.investApi(with:  .investmentGuide)

        }
    }
}

struct HomeDetailVw_Previews: PreviewProvider {
    static var previews: some View {
        HomeDetailVw()
    }
}

