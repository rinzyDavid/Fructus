//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by david on 15/12/2021.
//

import SwiftUI

struct FruitHeaderView: View {
    var fruit:Fruit
    @State private var isAimatingImage:Bool = false
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical,20)
                .scaleEffect(isAimatingImage ? 1.0 : 0.5)
            
        }.onAppear(perform: {
            withAnimation(.easeOut(duration: 0.6)){
                isAimatingImage = true
            }
        })
        //ZSTACK
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
