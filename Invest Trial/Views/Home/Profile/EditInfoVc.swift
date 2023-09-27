//
//  EditInfoVc.swift
//  Invest Trial
//
//  Created by Abservetech on 26/09/23.
//

import SwiftUI

struct EditInfoVc: View {
    
    //MARK: - PROPERTIES :
    @State var name = String()
    @State private var fullname = "Warren Buffet"
    @State private var birthday = "05 November 1993"
    @State private var gender = "Male"
    @State private var email = "warren.buff@invest.ai"
    @State private var phonenumber = "-"
    @State private var address = "-"
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    VStack {
                    }.frame(height: 35)
                    NavigationTopView(Btnname: Constant.profilecontact, isNotification: false, ismenu: false)
                        .onTapGesture {
                            presentationMode.wrappedValue.dismiss()
                        }
                    Image("defaultprofile").resizable().frame(width: 180,height: 180).cornerRadius(90).padding(.top, 25)
                    VStack{
                        VStack(alignment: .leading) {
                            VStack {
                                HStack {
                                    Text("Name").fontWeight(.semibold).foregroundColor(.secondary)
                                    Spacer()
                                    Text("Change").fontWeight(.semibold).font(.system(size: 15)).foregroundColor(.appColor()).padding([.trailing, .top], 20)
                                }
                                TextField("Warren Buffet", text: $fullname).allowsHitTesting(false)
                                Divider().background(.secondary)
                            }
                            VStack {
                                HStack {
                                    Text("Birthdate").fontWeight(.semibold).foregroundColor(.secondary)
                                    Spacer()
                                    Text("Change").fontWeight(.semibold).font(.system(size: 15)).foregroundColor(.appColor()).padding([.trailing, .top], 20)
                                }
                                TextField("05 November 1993", text: $birthday).allowsHitTesting(false)
                                Divider().background(.secondary)
                            }
                            VStack {
                                HStack {
                                    Text("Gender").fontWeight(.semibold).foregroundColor(.secondary)
                                    Spacer()
                                    Text("Change").fontWeight(.semibold).font(.system(size: 15)).foregroundColor(.appColor()).padding([.trailing, .top], 20)
                                }
                                TextField("gender", text: $gender).allowsHitTesting(false)
                                Divider().background(.secondary)
                            }
                            
                            VStack {
                                HStack {
                                    Text("Email").fontWeight(.semibold).foregroundColor(.secondary)
                                    Spacer()
                                    Text("Change").fontWeight(.semibold).font(.system(size: 15)).foregroundColor(.appColor()).padding([.trailing, .top], 20)
                                }
                                TextField("gender", text: $email).allowsHitTesting(false)
                                Divider().background(.secondary)
                            }
                            
                            VStack(alignment: .leading) {
                                
                                Text("Phone Number").fontWeight(.semibold).foregroundColor(.secondary).padding(.top, 10)
                                
                                TextField("gender", text: $phonenumber).allowsHitTesting(false)
                                Divider().background(.secondary)
                            }
                            
                            VStack(alignment: .leading) {
                                Text("Address").fontWeight(.semibold).foregroundColor(.secondary).padding(.top, 10)
                                TextField("gender", text: $address) .allowsHitTesting(false)
                                Divider().background(.secondary)
                            }
                        }.padding()
                    }
                }
            }
        }
    }
}

struct EditInfoVc_Previews: PreviewProvider {
    static var previews: some View {
        EditInfoVc()
    }
}
