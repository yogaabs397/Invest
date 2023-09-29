//
//  NotificationTvw.swift
//  Invest Trial
//
//  Created by  on 27/09/23.
//

import SwiftUI

struct NotificationTvw: View {
    
    var body: some View {
        HStack {
            Image(Image.notificationsub()).resizable().frame(width: Constant.Alignment.constraint_80,height: Constant.Alignment.constraint_80).cornerRadius(Constant.Alignment.constraint_15)
            HStack {
                Text(Constant.notificationTopContent)
                    .foregroundColor(Color.black)
                    .font(.system(size: Constant.Alignment.constraint_18))
                    .fontWeight(.regular)
                VStack {
                    Text(Constant.notificationSub)
                        .foregroundColor(Color.lightGray())
                        .font(.system(size: Constant.Alignment.constraint_18))
                        .fontWeight(.regular)
                        .padding(.top, Constant.Alignment.constraint_10)
                    Spacer()
                }
            }
           
        }.contentShape(Rectangle())
            .frame(maxWidth: .infinity)
            .frame(height: Constant.Alignment.constraint_110).padding([.horizontal], Constant.Alignment.constraint_10)
    }
    
}

struct NotificationTvw_Previews: PreviewProvider {
    static var previews: some View {
        NotificationTvw()
    }
}
