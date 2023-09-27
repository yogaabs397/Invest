//
//  CommonVc.swift
//  Invest Trial
//
//  Created by Abservetech on 25/09/23.
//

import SwiftUI

struct CommonVc: View {
    
    //MARK: PROPERTIES :
    
    @State var ispresent = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Image("Splash").resizable()
                        .frame(width: 250, height: 250)
                        .padding(.vertical, 25)
                    Text(Constant.splashContent)   .foregroundColor(.black)
                        .font(.system(size: 27))
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 25)
                    Text(Constant.splashBottomContent)
                        .foregroundColor(Color.secondary)
                        .font(.system(size: 15))
                        .fontWeight(.medium)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .multilineTextAlignment(.center)
                        .padding([.horizontal], 25).padding(.top, 15)
                    Button(action: {
                        ispresent = true
                    }) {
                        Text(Constant.createAccount)
                            .padding(.horizontal)
                            .fontWeight(.semibold)
                            .font(.headline)
                            .font(.system(size: 18))
                            .foregroundColor(.white)
                    }.contentShape(Rectangle())
                        .frame(maxWidth: .infinity)
                        .frame(height: 60)
                        .background(Color.appColor())
                        .cornerRadius(15)
                        .shadow(radius: 4, y: 4)
                        .padding()
                    Text(Constant.login).foregroundColor(Color.appColor()).fontWeight(.semibold)
                    
                    NavigationLink(destination: SignupVc().navigationBarBackButtonHidden(true), isActive: $ispresent) {
                        EmptyView().background(.gray)
                    }
                }
                
            }
        }
    }
}

struct CommonVc_Previews: PreviewProvider {
    static var previews: some View {
        CommonVc()
    }
}
