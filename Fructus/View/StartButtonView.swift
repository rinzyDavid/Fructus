//
//  StartButtonView.swift
//  Fructus
//
//  Created by david on 15/12/2021.
//

import SwiftUI

struct StartButtonView: View {
    //MARK PROPERTIES
    @AppStorage("isOnboarding") var isOnBoarding:Bool?
    
    //MARK - BODY
    var body: some View {
        Button(action: {
            isOnBoarding = false
        }){
            HStack(spacing:8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal,16)
            .padding(.vertical,10)
            .background(
                Capsule().stroke(.white,lineWidth: 1.25)
            )
        }//BUTTON
        .accentColor(.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
