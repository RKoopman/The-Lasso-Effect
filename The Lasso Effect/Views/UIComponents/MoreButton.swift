//
//  MoreButton.swift
//  The Lasso Effect
//
//  Created by Raoul Koopman on 1/16/22.
//

import SwiftUI

struct MoreButton: View {
    
    @EnvironmentObject var networkManager: NetworkManager
    
    var body: some View {
            Button(action: {
                print("MORE HAS BEEN PRESSED!!")
                networkManager.fetchQuote()
            }) {
                Text("More Advice")
                    .font(.system(size: 20))
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .padding(.horizontal)
            }
            .background(Color.red)
            .cornerRadius(5.0)
        }
    }


struct MoreButton_Previews: PreviewProvider {
    static var previews: some View {
        MoreButton()
    }
}
