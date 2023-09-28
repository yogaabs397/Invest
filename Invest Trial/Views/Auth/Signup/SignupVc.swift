//
//  SignupVc.swift
//  Invest Trial
//
//  Created by Abservetech on 25/09/23.
//

import SwiftUI
import AlertToast

struct SignupVc: View {
    
    //MARK: PROPERTIES :
    
    @State private var fullname = "yoga"
    @State private var email = "eve.holt@reqres.in"
    @State private var password = "1234567"
    @State var isHome = false
    @State var signupVm = RegisterVm()
    @State var loginScreen = Bool()
    @State private var showToast = false
    @State var message = String()
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
                    Text(Constant.signupTop)   .foregroundColor(.black)
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
                            TextField(Constant.nameplaceHolder, text: $fullname).padding(.all, 10)
                        }.frame(height: 60)
                            .overlay(RoundedRectangle(cornerRadius: 15).stroke(.secondary, lineWidth: 1.5))
                            .padding([.leading, .trailing, .top], 25)
                        
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
                      //  isHome = true
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
                        .padding([.horizontal, .vertical], 25).onTapGesture {
                            if fullname.isEmpty {
                                message = "Please Enter Full name"
                                showToast.toggle()
                            }  else if email.isEmpty {
                                message = "Please Enter Email Id"
                                showToast.toggle()
                            } else if password.isEmpty {
                                message = "Please Enter Password"
                                showToast.toggle()
                            }else {
                                var reqModel = RegisterMapModel()
                                reqModel.email = email
                                reqModel.password = password
                                signupApi(with: reqModel)
                            }
                        }
                    Text(Constant.alreadylogin).foregroundColor(Color.appColor()).fontWeight(.semibold).onTapGesture {
                        loginScreen = true
                    }
                    NavigationLink(destination: HomeVc().navigationBarBackButtonHidden(true), isActive: $isHome) {
                        EmptyView().background(.gray)
                    }
                    NavigationLink(destination: LoginVw().navigationBarBackButtonHidden(true), isActive: $loginScreen) {
                        EmptyView().background(.gray)
                    }
                }.toast(isPresenting: $showToast){
                    AlertToast(displayMode: .hud, type: .regular, title: message)
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
extension SignupVc {
    func signupApi(with regreq: RegisterMapModel) {
        signupVm.loginApi(with: regreq)
        signupVm.successHandler = { (resData) in
            isHome = true
        }
        signupVm.errorHandler = { (errData) in
            print("Error Response :: \(errData)")
        }
    }
}
