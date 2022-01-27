//
//  SettingsRoleView.swift
//  Fructus
//
//  Created by david on 16/12/2021.
//

import SwiftUI

struct SettingsRoleView: View {
    
    var name:String
    var content:String? = nil
    var linkLabel:String? = nil
    var linkDestination:String? = nil
    var body: some View {
        
        VStack {
            Divider().padding(.vertical,4)
            HStack{
                Text(name).foregroundColor(.gray)
                Spacer()
                if content != nil{
                    Text(content!)
                }else if linkLabel != nil && linkDestination != nil{
                   
                    Link(linkLabel!,destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                }
                else{
                    EmptyView()
                }
                
            }
        }
    }
}

struct SettingsRoleView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRoleView(name: "Developer", content: "David Echianu")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
