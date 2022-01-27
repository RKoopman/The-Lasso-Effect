//
//  NetworkManager.swift
//  The Lasso Effect
//
//  Created by Raoul Koopman on 12/13/21.
//

import Foundation

class NetworkManager: ObservableObject {
        
    @Published var responseQuotes = [QuoteModel]()

    
    func fetchQuote() {
        if let url = URL(string: "https://tedlassoquotes.com/v1/quote") {
            print(url)
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(QuoteModel.self, from: safeData)
                            DispatchQueue.main.async {
                                self.responseQuotes.append(results)
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
