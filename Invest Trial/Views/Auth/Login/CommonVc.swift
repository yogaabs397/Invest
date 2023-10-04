//
//  CommonVc.swift
//  Invest Trial
//
//  Created by  on 25/09/23.
//

import SwiftUI

struct CommonVc: View {
    
    //MARK: PROPERTIES :
    @State var ispresent = false
    @State var loginScreen = Bool()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Image(Image.splash()).resizable()
                        .frame(width: Constant.Alignment.constraint_250, height: Constant.Alignment.constraint_250)
                        .padding(.vertical, Constant.Alignment.constraint_25)
                    Text(Constant.splashContent)   .foregroundColor(.black)
                        .font(.system(size: Constant.Alignment.constraint_27))
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, Constant.Alignment.constraint_25)
                    Text(Constant.splashBottomContent)
                        .foregroundColor(Color.secondary)
                        .font(.system(size: Constant.Alignment.constraint_15))
                        .fontWeight(.medium)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .multilineTextAlignment(.center)
                        .padding([.horizontal], Constant.Alignment.constraint_25).padding(.top, Constant.Alignment.constraint_15)
                    Button(action: {
                        ispresent = true
                    }) {
                        Text(Constant.createAccount)
                            .padding(.horizontal)
                            .fontWeight(.semibold)
                            .font(.headline)
                            .font(.system(size: Constant.Alignment.constraint_18))
                            .foregroundColor(.white)
                    }.contentShape(Rectangle())
                        .frame(maxWidth: .infinity)
                        .frame(height: Constant.Alignment.constraint_60)
                        .background(Color.appColor())
                        .cornerRadius(Constant.Alignment.constraint_15)
                        .shadow(radius: Constant.Alignment.constraint_4, y: Constant.Alignment.constraint_4)
                        .padding()
                    Text(Constant.login).foregroundColor(Color.appColor()).fontWeight(.semibold).onTapGesture {
                        loginScreen = true
                    }
                    NavigationLink(destination: SignupVc().navigationBarBackButtonHidden(true), isActive: $ispresent) {
                        EmptyView().background(.gray)
                    }
                    NavigationLink(destination: LoginVw().navigationBarBackButtonHidden(true), isActive: $loginScreen) {
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
