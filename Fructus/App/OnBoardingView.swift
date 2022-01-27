//
//  OnBoardingView.swift
//  Fructus
//
//  Created by david on 15/12/2021.
//

import SwiftUI

struct OnBoardingView: View {
    //MARK PROPERTIES
    
    
    //MARK - BODY
    var body: some View {
        TabView{
            ForEach(fruitsData){item in
                FruitCardView(fruit: item)
                //Text("Start")
            }
            
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
        
    }
}


//MARK - PREVIEW
struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
