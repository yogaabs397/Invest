//
//  ProfileSubVc.swift
//  Invest Trial
//
//  Created by  on 26/09/23.
//

import SwiftUI

struct ProfileSubVc: View {
    
    //MARK: - PROPERTIES :
    @State var isPresentingDetail = false
    var profileModel : ProfileModel
    
    var body: some View {
        VStack {
            HStack(spacing: Constant.Alignment.constraint_10) {
                Image(profileModel.subImg).resizable().frame(width: Constant.Alignment.constraint_25, height: Constant.Alignment.constraint_25).padding([.vertical, .leading])
                Text(profileModel.subName).fontWeight(.regular)
                Spacer()
                Image(Image.right()).resizable().frame(width: Constant.Alignment.constraint_15, height: Constant.Alignment.constraint_23).padding(.trailing, Constant.Alignment.constraint_15)
            }  .contentShape(Rectangle())
                .frame(maxWidth: .infinity)
                .frame(height:  Constant.Alignment.constraint_60)
                .background(Color.white)
                .cornerRadius(0)
                .shadow(
                    color: Color.gray,
                    radius: Constant.Alignment.constraint_2,
                    x: 0,
                    y: 0
                )
                .padding().onTapGesture {
                    isPresentingDetail = true
                }
            if profileModel.subName == Constant.profilecontact {
                NavigationLink(destination: EditInfoVc(name: profileModel.subName).navigationBarBackButtonHidden(true), isActive: $isPresentingDetail) { EmptyView() }
            } else if profileModel.subName == Constant.profilebank{
                NavigationLink(destination: BankListVw().navigationBarBackButtonHidden(true), isActive: $isPresentingDetail) { EmptyView() }
            }  else {
                NavigationLink(destination: BankVc(), isActive: $isPresentingDetail) {
                    EmptyView()
                }
            }
        }
        
    }
}

struct ProfileSubVc_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSubVc(profileModel: ProfileModel())
    }
}
