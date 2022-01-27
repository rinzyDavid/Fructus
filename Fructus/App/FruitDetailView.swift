//
//  FruitDetailView.swift
//  Fructus
//
//  Created by david on 15/12/2021.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK - PROPERTIES
    
    var fruit:Fruit
    
    
    //MARK - BODY
    var body: some View {
        
        NavigationView{
            
            ScrollView(.vertical,showsIndicators: false){
                VStack(alignment: .center, spacing: 20){
                    
                    //HEADER
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        //TITLE
                        Text(fruit.title)
                            .font(.system(.largeTitle))
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //HEADING
                        
                        Text(fruit.headline)
                            .font(.system(.headline))
                            .multilineTextAlignment(.leading)
                        
                        //NUTRIENTS
                        FruitNutrientsView(fruit: fruit)
                        
                        //SUBHEADER
                        
                        Text("Learn more about \(fruit.title) Fruit".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //LINK
                        SourceLinkView()
                            .padding(.top,10)
                            .padding(.bottom,40)
                        
                    }.padding(.horizontal,20)
                        .frame(maxWidth:640,alignment: .center)
                    //VSTACK
                    
                    
                }.navigationBarTitle(fruit.title,displayMode: .inline)
                    .navigationBarHidden(true)
                    
                //VSTACK
            }//SCROLLVIEW
            .edgesIgnoringSafeArea(.top)
            
            
        }.navigationViewStyle(.stack)
        //Mark- NavigationView
        
        
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
