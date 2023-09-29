//
//  NavigationTopView.swift
//  Invest Trial
//
//  Created by  on 25/09/23.
//

import SwiftUI

struct NavigationTopView: View {
    @State var Btnname : String
    @State var isNotification : Bool
    @State var ismenu : Bool
    @State var notificationPush = Bool()
    
    var body: some View {
        HStack {
            if ismenu {
                Image(Image.menu()).resizable()
                    .frame(width: Constant.Alignment.constraint_24, height: Constant.Alignment.constraint_24)
            } else {
                Image(Image.back()).resizable()
                    .frame(width: Constant.Alignment.constraint_15, height: Constant.Alignment.constraint_25)
            }
            Text(Btnname)
                .fontWeight(.bold)
                .foregroundColor(.black)
                .font(.system(size: Constant.Alignment.constraint_22))
                .multilineTextAlignment(.leading)
                .lineLimit(nil)
                .frame(maxWidth: .infinity, maxHeight: Constant.Alignment.constraint_50)
            if isNotification {
                Image(Image.notification()).resizable()
                    .frame(width: Constant.Alignment.constraint_24, height: Constant.Alignment.constraint_24).onTapGesture {
                        notificationPush = true
                    }
            }
            NavigationLink(destination: NotificationVw().navigationBarBackButtonHidden(true), isActive: $notificationPush) {
                EmptyView().background(.gray)
            }
        }.padding(.horizontal, Constant.Alignment.constraint_25)
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationTopView(Btnname: "", isNotification: false, ismenu: false)
    }
}

