//
//  ProfileVc.swift
//  Invest Trial
//
//  Created by Abservetech on 25/09/23.
//

import SwiftUI

struct ProfileVc: View {
    
    //MARK: - PROPERTIES :
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
                    Text(Constant.profile)   .foregroundColor(.black)
                        .font(.system(size: 30))
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .multilineTextAlignment(.center)
                        .padding([.vertical], 20).padding(.horizontal, 30)
                    Image("defaultprofile").resizable().frame(width: 200,height: 200).cornerRadius(100)
                    Text("Jonas Macroni").foregroundColor(.black).font(.system(size: 25))
                        .fontWeight(.bold).padding([.leading, .trailing, .top], 20)
                    Text("Expert").foregroundColor(.black).font(.system(size: 18))
                        .fontWeight(.regular).padding([.leading, .trailing, .top], 5)
                    VStack {
                        HStack {
                            Image("contact").resizable().frame(width: 15, height: 15, alignment: .leading)
                            Text("Contact Info")
                        }.frame(maxWidth: .infinity ).frame(height: 60).background(.yellow).padding([.leading, .trailing], 20)
                           
                    }
                }
            }
        }
    }
}

struct ProfileVc_Previews: PreviewProvider {
    static var previews: some View {
        ProfileVc()
    }
}
