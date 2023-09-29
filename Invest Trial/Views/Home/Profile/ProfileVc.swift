//
//  ProfileVc.swift
//  Invest Trial
//
//  Created by  on 25/09/23.
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
                    }.frame(height: Constant.Alignment.constraint_35).frame(height: Constant.Alignment.constraint_35)
                    NavigationTopView(Btnname: "", isNotification: false, ismenu: false)
                        .onTapGesture {
                            presentationMode.wrappedValue.dismiss()
                        }
                    Text(Constant.profile)   .foregroundColor(.black)
                        .font(.system(size: Constant.Alignment.constraint_30))
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .multilineTextAlignment(.center)
                        .padding([.vertical], Constant.Alignment.constraint_20).padding(.horizontal, Constant.Alignment.constraint_30)
                    Image(Image.profile()).resizable().frame(width: Constant.Alignment.constraint_140,height: Constant.Alignment.constraint_140).cornerRadius(Constant.Alignment.constraint_70)
                    Text(Constant.profileStaticName).foregroundColor(.black).font(.system(size: Constant.Alignment.constraint_25))
                        .fontWeight(.bold).padding([.leading, .trailing, .top], Constant.Alignment.constraint_20)
                    Text(Constant.expert).foregroundColor(.black).font(.system(size: Constant.Alignment.constraint_18))
                        .fontWeight(.regular).padding([.leading, .trailing, .top], Constant.Alignment.constraint_5)
                    
                    VStack(spacing: 0) {
                        ForEach (0..<profile.count, id: \.self) { i in
                            ProfileSubVc(profileModel: profile[i])
                        }
                    }.padding([.leading, .trailing], Constant.Alignment.constraint_5)
                    
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
