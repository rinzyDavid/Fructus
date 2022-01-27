//
//  SettingsView.swift
//  Fructus
//
//  Created by david on 16/12/2021.
//

import SwiftUI

struct SettingsView: View {
    //MARK PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    
    @AppStorage("isOnboarding") var isOnBoarding:Bool = false
    
    
    //MARK - BODY
    var body: some View {
        
        NavigationView{
            
            ScrollView(.vertical,showsIndicators: false){
                
                VStack(spacing:20){
                    //MARK SECTION 1
                    GroupBox(label:
                               SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ){
                        Divider().padding(.vertical,4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                           
                            Text("Most fruits are naturally low in fat, sodium and cholesterol. Fruits provide essential vitamins,diatery fibers and much more")
                                .font(.footnote)
                        }
                    }
                    
                    
                    //MARK SECTION 2
                    
                    GroupBox(label:SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")){
                        Divider().padding(.vertical,4)
                        Text("If you wish to see the welcome screen again, just toggle this switch in this box. This way you can restart the onboarding all over again")
                            .padding(.vertical,8)
                            .frame(minHeight:60)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnBoarding){
                            if isOnBoarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(Color(UIColor.tertiarySystemGroupedBackground)
                        .clipShape(RoundedRectangle(cornerRadius:8, style: .continuous)))
                        
                    }
                  
                    
                    
                    //MARK SECTION 3
                    GroupBox(label:SettingsLabelView(labelText: "Application", labelImage: "apps.iphone") ){
                        
                        
                        SettingsRoleView(name: "Developer", content:"David Echianu")
                        SettingsRoleView(name: "Designer", content:"Udochi Echianu")
                        SettingsRoleView(name: "Compatibility", content:"Iphone")
                        SettingsRoleView(name: "Website", linkLabel: "Google",linkDestination: "google.com")
                        SettingsRoleView(name: "SwiftUI", content:"3.0")
                        SettingsRoleView(name: "Version", content:"1")
                        
                    }
                   
                }.navigationBarTitle("Settings",displayMode: .large)
                    .padding()
                    .navigationBarItems(trailing:
                                            Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }){
                                            Image(systemName: "xmark")
                    })
                //VSTACK
            }//SCROLLVIEW
            
        }//NAVIGATIONVIEW
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
