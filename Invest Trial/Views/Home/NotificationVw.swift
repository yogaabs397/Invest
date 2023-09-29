//
//  NotificationVw.swift
//  Invest Trial
//
//  Created by  on 27/09/23.
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
                    }.frame(height: Constant.Alignment.constraint_35).frame(height: Constant.Alignment.constraint_35)
                    NavigationTopView(Btnname: "", isNotification: false, ismenu: false)
                        .onTapGesture {
                            presentationMode.wrappedValue.dismiss()
                        }
                    Text(Constant.notification)   .foregroundColor(.black)
                        .font(.system(size: Constant.Alignment.constraint_27))
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .multilineTextAlignment(.leading)
                        .padding(.vertical, Constant.Alignment.constraint_20).padding(.horizontal, Constant.Alignment.constraint_30)
                    
                    ScrollView(.vertical) {
                        VStack(spacing: Constant.Alignment.constraint_10) {
                            ForEach (0..<10, id: \.self) { i in
                                NotificationTvw()
                                Divider().background(.secondary)
                            }
                        }.padding(.top, Constant.Alignment.constraint_10).padding(.horizontal, Constant.Alignment.constraint_20)
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
