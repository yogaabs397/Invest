//
//  EditInfoVc.swift
//  Invest Trial
//
//  Created by  on 26/09/23.
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
                    }.frame(height:  Constant.Alignment.constraint_35)
                    NavigationTopView(Btnname: Constant.profilecontact, isNotification: false, ismenu: false)
                        .onTapGesture {
                            presentationMode.wrappedValue.dismiss()
                        }
                    Image(Image.profile()).resizable().frame(width:  Constant.Alignment.constraint_180,height: Constant.Alignment.constraint_180).cornerRadius(Constant.Alignment.constraint_90).padding(.top, Constant.Alignment.constraint_25)
                    VStack{
                        VStack(alignment: .leading) {
                            VStack {
                                HStack {
                                    Text(Constant.nameplaceholder).fontWeight(.semibold).foregroundColor(.secondary)
                                    Spacer()
                                    Text(Constant.changeplaceholder).fontWeight(.semibold).font(.system(size: Constant.Alignment.constraint_15)).foregroundColor(.appColor()).padding([.trailing, .top], Constant.Alignment.constraint_20)
                                }
                                TextField(Constant.staticname, text: $fullname).allowsHitTesting(false)
                                Divider().background(.secondary)
                            }
                            VStack {
                                HStack {
                                    Text(Constant.dateofbirth).fontWeight(.semibold).foregroundColor(.secondary)
                                    Spacer()
                                    Text(Constant.changeplaceholder).fontWeight(.semibold).font(.system(size: Constant.Alignment.constraint_15)).foregroundColor(.appColor()).padding([.trailing, .top], Constant.Alignment.constraint_20)
                                }
                                TextField(Constant.staticdate, text: $birthday).allowsHitTesting(false)
                                Divider().background(.secondary)
                            }
                            VStack {
                                HStack {
                                    Text(Constant.gender).fontWeight(.semibold).foregroundColor(.secondary)
                                    Spacer()
                                    Text(Constant.changeplaceholder).fontWeight(.semibold).font(.system(size: Constant.Alignment.constraint_15)).foregroundColor(.appColor()).padding([.trailing, .top], Constant.Alignment.constraint_20)
                                }
                                TextField(Constant.gender, text: $gender).allowsHitTesting(false)
                                Divider().background(.secondary)
                            }
                            VStack {
                                HStack {
                                    Text(Constant.email).fontWeight(.semibold).foregroundColor(.secondary)
                                    Spacer()
                                    Text(Constant.changeplaceholder).fontWeight(.semibold).font(.system(size: Constant.Alignment.constraint_15)).foregroundColor(.appColor()).padding([.trailing, .top], Constant.Alignment.constraint_20)
                                }
                                TextField(Constant.email, text: $email).allowsHitTesting(false)
                                Divider().background(.secondary)
                            }
                            VStack(alignment: .leading) {
                                
                                Text(Constant.phonenumber).fontWeight(.semibold).foregroundColor(.secondary).padding(.top, Constant.Alignment.constraint_10)
                                
                                TextField(Constant.phonenumber, text: $phonenumber).allowsHitTesting(false)
                                Divider().background(.secondary)
                            }
                            VStack(alignment: .leading) {
                                Text(Constant.address).fontWeight(.semibold).foregroundColor(.secondary).padding(.top, Constant.Alignment.constraint_10)
                                TextField(Constant.address, text: $address) .allowsHitTesting(false)
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
