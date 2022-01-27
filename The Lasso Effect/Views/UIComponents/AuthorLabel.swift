//
//  AuthorLabel.swift
//  The Lasso Effect
//
//  Created by Raoul Koopman on 12/16/21.
//

import SwiftUI

struct AuthorLabel: View {
    
    @EnvironmentObject var networkManager: NetworkManager
    
    let text: String
    
    var body: some View {
        Text("\(text)")
            .font(.system(size: 30))
            .fontWeight(.heavy)
            .foregroundColor(.white)
            .frame(width: UIScreen.screenWidth, alignment: .center)
//            .padding()
    }
}

struct AuthorLabel_Previews: PreviewProvider {
    static var previews: some View {
        AuthorLabel(text: "Led Tasso")
            .background(.green)
    }
}
