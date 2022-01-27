//
//  FruitRoleView.swift
//  Fructus
//
//  Created by david on 15/12/2021.
//

import SwiftUI

struct FruitRoleView: View {
    
    var fruit:Fruit
    
    var body: some View {
        HStack {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.5), radius: 3, x: 2, y: 2)
                .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
                .cornerRadius(10)
            VStack(alignment: .leading, spacing: 5) {
                Text(fruit.title)
                    .font(.system(.title3))
                    .fontWeight(.bold)
                
                Text(fruit.headline)
                    .font(.system(.caption))
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct FruitRoleView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRoleView(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
