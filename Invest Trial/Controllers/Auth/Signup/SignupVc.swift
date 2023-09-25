//
//  SignupVc.swift
//  Invest Trial
//
//  Created by Abservetech on 25/09/23.
//

import SwiftUI

struct SignupVc: View {
    
    //MARK: PROPERTIES :
    
    @State private var fullname = String()
    @State private var email = String()
    @State private var password = String()
    @State var isHome = false
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    VStack {
                    }.frame(height: 35)
                    NavigationTopView(Btnname: "")
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
                        isHome = true
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
                        .background(Color.green)
                        .cornerRadius(15)
                        .shadow(radius: 4, y: 4)
                        .padding([.horizontal, .vertical], 25)
                    Text(Constant.alreadylogin).foregroundColor(.green).fontWeight(.semibold)
                    NavigationLink(destination: HomeVc().navigationBarBackButtonHidden(true), isActive: $isHome) {
                        EmptyView().background(.gray)
                    }
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
