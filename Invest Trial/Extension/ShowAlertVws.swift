//
//  ShowAlertVws.swift
//  Invest Trial
//
//  Created by Abservetech on 28/09/23.
//

import SwiftUI
import AlertToast

struct ShowAlertVws: View {
    
    @State var showToast = Bool()
    @State var message = String()
    var body: some View {
        VStack {
        
        } .toast(isPresenting: $showToast){
            AlertToast(displayMode: .hud, type: .regular, title: message)
        }
       
    }
}

struct ShowAlertVws_Previews: PreviewProvider {
    static var previews: some View {
        ShowAlertVws()
    }
}
