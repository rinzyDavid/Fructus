//
//  ContentView.swift
//  Fructus
//
//  Created by david on 15/12/2021.
//

import SwiftUI

struct FruitListView: View {
    
    var fruits:[Fruit] = fruitsData
    @State private var isShowingSettings = false
    @AppStorage("isOnboarding") var isOnBoarding:Bool?
    
    var body: some View {
       
        NavigationView{
            
            List{
                ForEach(fruits.shuffled()){
                    fruit in
                    
                    NavigationLink(destination: FruitDetailView(fruit: fruit)){
                        FruitRoleView(fruit: fruit)
                            .padding(.vertical,4)
                    }
                    
                   
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                
                isShowingSettings = true
            }){
                Image(systemName: "slider.horizontal.3")
            })
            .sheet(isPresented: $isShowingSettings){
                SettingsView()
            }
                
        }.navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FruitListView()
    }
}
