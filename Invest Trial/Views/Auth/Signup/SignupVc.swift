//
//  SignupVc.swift
//  Invest Trial
//
//  Created by  on 25/09/23.
//

import SwiftUI
import AlertToast

struct SignupVc: View {
    
    //MARK: PROPERTIES :

    @ObservedObject var signupVm = RegisterVm()
    @State var loginScreen = Bool()
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
                    Text(Constant.signupTop)   .foregroundColor(.black)
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
                            TextField(Constant.nameplaceHolder, text: $signupVm.fullname).padding(.all, Constant.Alignment.constraint_10)
                        }.frame(height: Constant.Alignment.constraint_60)
                            .overlay(RoundedRectangle(cornerRadius: Constant.Alignment.constraint_15).stroke(.secondary, lineWidth: 1.5))
                            .padding([.leading, .trailing, .top], Constant.Alignment.constraint_25)
                        
                        VStack(spacing: Constant.Alignment.constraint_15) {
                            TextField(Constant.emailplaceHolder, text: $signupVm.email).padding(.all, Constant.Alignment.constraint_10)
                        }.frame(height: Constant.Alignment.constraint_60)
                            .overlay(RoundedRectangle(cornerRadius: Constant.Alignment.constraint_15).stroke(.secondary, lineWidth: 1.5))
                            .padding([.leading, .trailing, .top], Constant.Alignment.constraint_25)
                        
                        VStack(spacing: Constant.Alignment.constraint_15) {
                            TextField(Constant.passwordplaceHolder, text: $signupVm.password).padding(.all, Constant.Alignment.constraint_10)
                        }.frame(height: Constant.Alignment.constraint_60)
                            .overlay(RoundedRectangle(cornerRadius: Constant.Alignment.constraint_15).stroke(.secondary, lineWidth: 1.5))
                            .padding([.leading, .trailing, .top], Constant.Alignment.constraint_25)
                    }
                    Button(action: {
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
                        .padding([.horizontal, .vertical], Constant.Alignment.constraint_25).onTapGesture {
                            signupVm.signupValidation()
                        }
                    Text(Constant.alreadylogin).foregroundColor(Color.appColor()).fontWeight(.semibold).onTapGesture {
                        loginScreen = true
                    }
                    NavigationLink(destination: HomeVc().navigationBarBackButtonHidden(true), isActive: $signupVm.isHome) {
                        EmptyView().background(.gray)
                    }
                    NavigationLink(destination: LoginVw().navigationBarBackButtonHidden(true), isActive: $loginScreen) {
                        EmptyView().background(.gray)
                    }
                }.toast(isPresenting: $signupVm.showToast){
                    AlertToast(displayMode: .hud, type: .regular, title: signupVm.message)
                }
            }
        }
    }
}
struct SignupVc_Previews: PreviewProvider {
    static var previews: some View {
        SignupVc()
    }
}

