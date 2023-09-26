//
//  ProfileVc.swift
//  Invest Trial
//
//  Created by Abservetech on 25/09/23.
//

import SwiftUI

struct ProfileVc: View {
    
    //MARK: - PROPERTIES :
    
    var profile: [ProfileModel] = [
        ProfileModel(subName: Constant.profilecontact,subImg: "contact"),
        ProfileModel(subName: Constant.profilefund,subImg: "fund"),
        ProfileModel(subName: Constant.profilebank,subImg: "bank"),
        ProfileModel(subName: Constant.profiledocument,subImg: "doc"),
        ProfileModel(subName: Constant.profilesettings,subImg: "setting")
    ]
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    VStack {
                    }.frame(height: 35).frame(height: 35)
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
                    Image("defaultprofile").resizable().frame(width: 140,height: 140).cornerRadius(70)
                    Text("Jonas Macroni").foregroundColor(.black).font(.system(size: 25))
                        .fontWeight(.bold).padding([.leading, .trailing, .top], 20)
                    Text("Expert").foregroundColor(.black).font(.system(size: 18))
                        .fontWeight(.regular).padding([.leading, .trailing, .top], 5)
                    
                    VStack(spacing: 0) {
                        ForEach (0..<profile.count, id: \.self) { i in
                            ProfileSubVc(profileModel: profile[i])
                        }
                    }.padding([.leading, .trailing], 5)
                    
                }.background(Color.backgroundColor())
            }.background(Color.backgroundColor())
        }
    }
}

struct ProfileVc_Previews: PreviewProvider {
    static var previews: some View {
        ProfileVc()
    }
}
