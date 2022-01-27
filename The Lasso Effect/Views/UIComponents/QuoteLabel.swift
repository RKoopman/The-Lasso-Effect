//
//  QuoteLabel.swift
//  The Lasso Effect
//
//  Created by Raoul Koopman on 12/15/21.
//

import SwiftUI

struct QuoteLabel: View {
    
    @EnvironmentObject var networkManager: NetworkManager
    
    let text: String
    
    var body: some View {
        Text(text)
            .font(.system(size: 17))
            .fontWeight(.heavy)
            .foregroundColor(.white)
            .padding()
            .frame(width: UIScreen.screenWidth - 20, alignment: .leading)
            .fixedSize()
    }
    
}

struct QuoteLabel_Previews: PreviewProvider {
    static var previews: some View {
        QuoteLabel(text: "For the love of Meghan Markle, do not blow that whistle again.")
            .background(.gray)
    }
}
