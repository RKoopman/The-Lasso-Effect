//
//  ContentView.swift
//  The Lasso Effect
//
//  Created by Raoul Koopman on 12/13/21.
//

import SwiftUI



struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    
    var body: some View {
        ZStack {
            VStack {
                
                Spacer()
                
                QuoteLabel(text: networkManager.responseQuotes.last?.quote ?? "finding insperation")
                
                Spacer()
                
                switch networkManager.responseQuotes.last?.tag {
                case "coach-beard":
                    Image("AuthBeard")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250)
                        .clipShape(Circle())
                        .shadow(radius: 10)
                        .overlay(Circle().stroke(.white, lineWidth: 5))
                case "ted-lasso":
                    Image("AuthTedLasso")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250)
                        .clipShape(Circle())
                        .shadow(radius: 10)
                        .overlay(Circle().stroke(.white, lineWidth: 5))
                case "roy-kent":
                    Image("AuthRoyKent")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250)
                        .clipShape(Circle())
                        .shadow(radius: 10)
                        .overlay(Circle().stroke(.white, lineWidth: 5))
                default:
                    Image("AuthRoyKent")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250)
                        .clipShape(Circle())
                        .shadow(radius: 10)
                        .overlay(Circle().stroke(.white, lineWidth: 5))
                }
                    
                
                AuthorLabel(text: networkManager.responseQuotes.last?.author ?? "not sure who")
                    .padding(.bottom, 20)
                
                Button(action: {
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
                .padding(.bottom, 40)
                                
            }
            .background(
                LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
            )
            .frame(width: UIScreen.screenWidth - 20, height: UIScreen.screenHeight - 90, alignment: .center)
            .cornerRadius(40.0)
        }
        .onAppear {
            self.networkManager.fetchQuote()
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}