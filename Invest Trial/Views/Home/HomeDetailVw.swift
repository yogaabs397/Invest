//
//  HomeDetailVw.swift
//  Invest Trial
//
//  Created by Abservetech on 27/09/23.
//

import SwiftUI

struct HomeDetailVw: View {
    
    // MARK: - PROPERTIES :
    @Environment(\.presentationMode) var presentationMode
    @State var investNow = Bool()
   
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    VStack {
                    }.frame(height: 35).frame(height: 35)
                    NavigationTopView(Btnname: "", isNotification: true, ismenu: true)
                        .onTapGesture {
                            presentationMode.wrappedValue.dismiss()
                        }
                    Text(Constant.welcomeContent)   .foregroundColor(.black)
                        .font(.system(size: 27))
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .multilineTextAlignment(.leading)
                        .padding(.vertical, 20).padding(.horizontal, 30)
                    VStack(alignment: .leading, spacing: 0) {
                        Text(Constant.homeContent)
                            .foregroundColor(Color.white)
                            .font(.system(size: 18))
                            .fontWeight(.medium)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding([.horizontal], 25).padding(.top, 30)
                        HStack {
                            Text("N203,935")   .foregroundColor(.white)
                                .font(.system(size: 28))
                                .fontWeight(.bold).padding(.leading, 15)
                            Spacer()
                            Button(action: {
                                investNow = true
                            }) {
                                Text("Invest now")
                                    .fontWeight(.medium)
                                    .font(.headline)
                                    .font(.system(size: 14))
                                    .foregroundColor(Color.appColor()).background(.white)
                            }.contentShape(Rectangle())
                                .frame(minWidth: 0, maxWidth: 90,maxHeight: 10)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(15)
                                .shadow(radius: 2, y: 2)
                                .padding()
                            
                        }.padding([.top, .leading], 15)
                    } .contentShape(Rectangle())
                        .frame(maxWidth: .infinity)
                        .frame(height: 150)
                        .background(Color.appColor())
                        .cornerRadius(20)
                        .padding(.horizontal, 25)
                    HStack {
                        Text("Best Plans")   .foregroundColor(.black)
                            .font(.system(size: 25))
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .multilineTextAlignment(.leading).padding([.leading, .top], 30)
                        Spacer()
                        Text("See All ->")
                            .foregroundColor(Color.red)
                            .font(.system(size: 18))
                            .fontWeight(.medium)
                            .padding([.trailing, .top], 30)
                    }
                    
                    ScrollView(.horizontal) {
                        LazyHStack(spacing: 15) {
                            ForEach (0..<5, id: \.self) { i in
                                BestPlansCvw(subcatName: "")
                            }
                        }
                    }.padding().scrollIndicators(.hidden)
                    
                    VStack(spacing: 1) {
                        Text("Investment Guide")   .foregroundColor(.black)
                            .font(.system(size: 25))
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .multilineTextAlignment(.leading).padding(.leading, 30).padding(.top, 10)
                        
                        ScrollView(.vertical) {
                            VStack(spacing: 10) {
                                ForEach (0..<5, id: \.self) { i in
                                    InvestGuideCvw(titleVal: "", subtitleVal: "")
                                    Divider().background(.secondary)
                                }
                              
                            }.padding(.top, 10)
                           
                        }.scrollIndicators(.hidden)
                    }
               
                    
                }
            }.scrollIndicators(.hidden)
        }
    }
}

struct HomeDetailVw_Previews: PreviewProvider {
    static var previews: some View {
        HomeDetailVw()
    }
}