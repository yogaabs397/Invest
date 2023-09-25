//
//  NavigationTopView.swift
//  Invest Trial
//
//  Created by Abservetech on 25/09/23.
//

import SwiftUI

struct NavigationTopView: View {
    @State var Btnname : String
    
    var body: some View {
        HStack {
            Image(Image.back()).resizable()
                .frame(width: 15, height: 25)
            Text(Btnname)
                .fontWeight(.bold)
                .foregroundColor(.black)
                .font(.system(size: 22))
                .multilineTextAlignment(.leading)
                .lineLimit(nil)
                .frame(maxWidth: .infinity, maxHeight: 50)
        }.padding(.horizontal, 25.0)
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationTopView(Btnname: "")
    }
}

