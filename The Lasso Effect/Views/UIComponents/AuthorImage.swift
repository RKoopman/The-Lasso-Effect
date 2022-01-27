//
//  AuthorImage.swift
//  The Lasso Effect
//
//  Created by Raoul Koopman on 12/16/21.
//

import SwiftUI

struct AuthorImage: View {
    
    @EnvironmentObject var networkManager: NetworkManager
    
    let quoteTag: String 
    
    var body: some View {
        
        
        Image(quoteTag)
            .resizable()
            .scaledToFit()
            .frame(width: 250)
            .clipShape(Circle())
            .shadow(radius: 10)
            .overlay(Circle().stroke(.white, lineWidth: 5))
        
    }
    
    func getImage(tag: String) -> String {
        switch tag {
        case "coach-beard":
            return "AuthBeard"
        case "ted-lasso":
            return "AuthTedLasso"
        case "roy-kent":
            return "AuthRoyKent"
        default:
            return "AuthTedLasso"
        }
    }
    
    
}

struct AuthorImage_Previews: PreviewProvider {
    static var previews: some View {
        AuthorImage(quoteTag: "AUthTedLasso")
    }
}
