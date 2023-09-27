//
//  ProfileSubVc.swift
//  Invest Trial
//
//  Created by Abservetech on 26/09/23.
//

import SwiftUI

struct ProfileSubVc: View {
    
    //MARK: - PROPERTIES :
    @State var isPresentingDetail = false
    var profileModel : ProfileModel
    
    var body: some View {
        VStack {
            HStack(spacing: 10) {
                Image(profileModel.subImg).resizable().frame(width: 25, height: 25).padding([.vertical, .leading])
                Text(profileModel.subName).fontWeight(.regular)
                Spacer()
                Image("right").resizable().frame(width: 15, height: 23).padding(.trailing, 15)
            }  .contentShape(Rectangle())
                .frame(maxWidth: .infinity)
                .frame(height: 60)
                .background(Color.white)
                .cornerRadius(0)
                .shadow(
                    color: Color.gray,
                    radius: 5,
                    x: 0,
                    y: 0
                )
                .padding().onTapGesture {
                    isPresentingDetail = true
                }
            if profileModel.subName == Constant.profilecontact {
                NavigationLink(destination: EditInfoVc(name: profileModel.subName).navigationBarBackButtonHidden(true), isActive: $isPresentingDetail) {
                    EmptyView()
                }
            } else {
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
