//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by david on 16/12/2021.
//

import SwiftUI

struct FruitNutrientsView: View {
    //MARK PROPERTIES
    
    var fruit:Fruit
    let nuttrients = ["Energy", "Sugar", "Fat", "Protiens", "Vitamins","Minerals"]
    
    
    //MARK - BODY
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutitional value per 100g"){
                ForEach(0..<nuttrients.count,id: \.self){item in
                    Divider().padding(.vertical,2)
                    
                    HStack {
                        Group{
                            Image(systemName: "info.circle")
                            Text(nuttrients[item])
                        }.foregroundColor(fruit.gradientColors[1])
                            .font(Font.system(.body).bold())
                            
                            
                       
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
            
        }//END OF GROUPBOX
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
