//
//  NotificationVw.swift
//  Invest Trial
//
//  Created by Abservetech on 27/09/23.
//

import SwiftUI

struct NotificationVw: View {
    
    //MARK: - PROPERTIES :
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    VStack {
                    }.frame(height: 35).frame(height: 35)
                    NavigationTopView(Btnname: "", isNotification: false, ismenu: false)
                        .onTapGesture {
                            presentationMode.wrappedValue.dismiss()
                        }
                    Text(Constant.notification)   .foregroundColor(.black)
                        .font(.system(size: 27))
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .multilineTextAlignment(.leading)
                        .padding(.vertical, 20).padding(.horizontal, 30)
                    
                    ScrollView(.vertical) {
                        VStack(spacing: 10) {
                            ForEach (0..<10, id: \.self) { i in
                                NotificationTvw()
                                Divider().background(.secondary)
                            }
                          
                        }.padding(.top, 10).padding(.horizontal, 20)
                       
                    }.scrollIndicators(.hidden)
                    
                }
            }.scrollIndicators(.hidden)
        }
    }
}

struct NotificationVw_Previews: PreviewProvider {
    static var previews: some View {
        NotificationVw()
    }
}
