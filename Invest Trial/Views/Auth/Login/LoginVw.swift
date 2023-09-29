//
//  LoginVw.swift
//  Invest Trial
//
//  Created by  on 28/09/23.
//

import SwiftUI
import AlertToast


struct LoginVw: View {
    
    //MARK: PROPERTIES :
    @ObservedObject var loginVm = LoginVm()
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    VStack {
                    }.frame(height: Constant.Alignment.constraint_35)
                    NavigationTopView(Btnname: "", isNotification: false, ismenu: false)
                        .onTapGesture {
                            presentationMode.wrappedValue.dismiss()
                        }
                    Text(Constant.loginTop)   .foregroundColor(.black)
                        .font(.system(size: Constant.Alignment.constraint_30))
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .multilineTextAlignment(.center)
                        .padding([.horizontal], Constant.Alignment.constraint_25)
                    Text(Constant.signupBottom)
                        .foregroundColor(Color.secondary)
                        .font(.system(size: Constant.Alignment.constraint_15))
                        .fontWeight(.medium)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .multilineTextAlignment(.center)
                        .padding([.horizontal], Constant.Alignment.constraint_25).padding(.top, Constant.Alignment.constraint_2)
                    VStack(spacing: Constant.Alignment.constraint_4) {
                        
                        VStack(spacing: Constant.Alignment.constraint_15) {
                            TextField(Constant.emailplaceHolder, text: $loginVm.email).padding(.all, Constant.Alignment.constraint_10)
                        }.frame(height: Constant.Alignment.constraint_60)
                            .overlay(RoundedRectangle(cornerRadius: Constant.Alignment.constraint_15).stroke(.secondary, lineWidth: 1.5))
                            .padding([.leading, .trailing, .top], Constant.Alignment.constraint_25)
                        
                        VStack(spacing: Constant.Alignment.constraint_15) {
                            TextField(Constant.passwordplaceHolder, text: $loginVm.password).padding(.all, Constant.Alignment.constraint_10)
                        }.frame(height: Constant.Alignment.constraint_60)
                            .overlay(RoundedRectangle(cornerRadius: Constant.Alignment.constraint_15).stroke(.secondary, lineWidth: 1.5))
                            .padding([.leading, .trailing, .top], Constant.Alignment.constraint_25)
                        
                    }
                    Button(action: {
                        
                    }) {
                        Text(Constant.submit)
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
                        .padding([.horizontal, .vertical], Constant.Alignment.constraint_25).onTapGesture {
                            loginVm.loginValidation()
                        }
                    NavigationLink(destination: HomeVc().navigationBarBackButtonHidden(true), isActive: $loginVm.isHome) {
                        EmptyView().background(.gray)
                    }
                }.toast(isPresenting: $loginVm.showToast){
                    AlertToast(displayMode: .hud, type: .regular, title: loginVm.message)
                }
            }
        }
    }
}
struct LoginVw_Previews: PreviewProvider {
    static var previews: some View {
        LoginVw()
    }
}
