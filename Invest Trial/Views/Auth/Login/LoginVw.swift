//
//  LoginVw.swift
//  Invest Trial
//
//  Created by Abservetech on 28/09/23.
//

import SwiftUI
import AlertToast


struct LoginVw: View {
    
    //MARK: PROPERTIES :
    
    @State private var email = "eve.holt@reqres.in"
    @State private var password = ""
    @State var isHome = false
    @State var loginVm = LoginVm()
    @State private var showToast = false
    @State var message = String()
    @State var errorMsg = String()
    

    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    VStack {
                    }.frame(height: 35)
                    NavigationTopView(Btnname: "", isNotification: false, ismenu: false)
                        .onTapGesture {
                            presentationMode.wrappedValue.dismiss()
                        }
                    Text(Constant.loginTop)   .foregroundColor(.black)
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .multilineTextAlignment(.center)
                        .padding([.horizontal], 25)
                    Text(Constant.signupBottom)
                        .foregroundColor(Color.secondary)
                        .font(.system(size: 15))
                        .fontWeight(.medium)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .multilineTextAlignment(.center)
                        .padding([.horizontal], 25).padding(.top, 2)
                    VStack(spacing: 4) {
                        
                        VStack(spacing: 15) {
                            TextField(Constant.emailplaceHolder, text: $email).padding(.all, 10)
                        }.frame(height: 60)
                            .overlay(RoundedRectangle(cornerRadius: 15).stroke(.secondary, lineWidth: 1.5))
                            .padding([.leading, .trailing, .top], 25)
                        
                        VStack(spacing: 15) {
                            TextField(Constant.passwordplaceHolder, text: $password).padding(.all, 10)
                        }.frame(height: 60)
                            .overlay(RoundedRectangle(cornerRadius: 15).stroke(.secondary, lineWidth: 1.5))
                            .padding([.leading, .trailing, .top], 25)
                        
                    }
                    Button(action: {

                    }) {
                        Text(Constant.submit)
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
                        .padding([.horizontal, .vertical], 25).onTapGesture {
                            if email.isEmpty {
                                message = "Please Enter Email Id"
                                showToast.toggle()
                            } else if password.isEmpty {
                                message = "Please Enter Password"
                                showToast.toggle()
                            }else {
                                loginApi()
                            }
                        }
                    NavigationLink(destination: HomeVc().navigationBarBackButtonHidden(true), isActive: $isHome) {
                        EmptyView().background(.gray)
                    }
                }.toast(isPresenting: $showToast){
                    AlertToast(displayMode: .hud, type: .regular, title: message)
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
extension LoginVw {
    func loginApi() {
        let loginVal = (email, password)
        loginVm.loginApi(with: loginVal)
        loginVm.successHandler = { (resData) in
            isHome = true
            message = "Login Successfully"
            showToast.toggle()
        }
        loginVm.errorHandler = { (errData) in
            print("Error Data::\(errData)")
        }
    }
}
