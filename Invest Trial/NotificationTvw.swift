//
//  NotificationTvw.swift
//  Invest Trial
//
//  Created by Abservetech on 27/09/23.
//

import SwiftUI

struct NotificationTvw: View {
    var body: some View {
        HStack {
            Image("notificationsub").resizable().frame(width: 80,height: 80).cornerRadius(15)
            
            HStack {
                Text("Apple stocks just increased Check it out now.")
                    .foregroundColor(Color.black)
                    .font(.system(size: 18))
                    .fontWeight(.regular)
                VStack {
                    Text("15min ago")
                        .foregroundColor(Color.lightGray())
                        .font(.system(size: 18))
                        .fontWeight(.regular)
                        .padding(.top, 10)
                    Spacer()
                }
               
            }
           
        }.contentShape(Rectangle())
            .frame(maxWidth: .infinity)
            .frame(height: 110).padding([.horizontal], 10)
    }
}

struct NotificationTvw_Previews: PreviewProvider {
    static var previews: some View {
        NotificationTvw()
    }
}
