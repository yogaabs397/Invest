//
//  NavigationTopView.swift
//  Invest Trial
//
//  Created by Abservetech on 25/09/23.
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
                    .frame(width: 24, height: 24)
            } else {
                Image(Image.back()).resizable()
                    .frame(width: 15, height: 25)
            }
         
          
            Text(Btnname)
                .fontWeight(.bold)
                .foregroundColor(.black)
                .font(.system(size: 22))
                .multilineTextAlignment(.leading)
                .lineLimit(nil)
                .frame(maxWidth: .infinity, maxHeight: 50)
            if isNotification {
                Image(Image.notification()).resizable()
                    .frame(width: 24, height: 24).onTapGesture {
                        notificationPush = true
                    }
            }
            NavigationLink(destination: NotificationVw().navigationBarBackButtonHidden(true), isActive: $notificationPush) {
                EmptyView().background(.gray)
            }
        }.padding(.horizontal, 25.0)
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationTopView(Btnname: "", isNotification: false, ismenu: false)
    }
}

