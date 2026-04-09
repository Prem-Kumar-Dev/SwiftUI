//
//  Sandbox.swift
//  Networking
//
//  Created by Prem Kumar on 09/04/26.
//

import Foundation
import Playgrounds

#Playground {
    
    //MARK: - Apple.com data
    
//    var myURL = URL(string: "https://apple.com")!
//    Task{
//        let (data, response) = try await URLSession.shared.data(from: myURL)
//        if let httpResponse = response as?
//            HTTPURLResponse,
//           httpResponse.statusCode == 200,
//           let dataString = String(data: data, encoding: .utf8)
//        {
//            print(data)
//            print("Success")
//        } else {
//            print("Network Error")
//        }
//    }
//    
    //MARK: - NASA APOD server data
    

//    
////    var nasaUrl = URL(string: "https://api.nasa.gov/planetary/apod?api_key=\(apiKey)&date=2026-04-01")!
//    
//    var  nasaURLComponent = URLComponents(string: "https://api.nasa.gov/planetary/apod")!
//    
//    nasaURLComponent.queryItems = [
//        URLQueryItem(name: "api_key", value: apiKey),
//        URLQueryItem(name: "date", value: "2026-04-01")
//    ]
//    
//    Task{
//        let (data, response) = try await URLSession.shared.data(from: nasaURLComponent.url!)
//        
//        if let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200, let stringData = String(data: data, encoding: .utf8) {
//            print(stringData)
//        }
//       
//    }
    
    //MARK: - iTunes Search
    
    var myItuneURL = URLComponents(string: "https://itunes.apple.com/search")!
    
    myItuneURL.queryItems = [
        URLQueryItem(name: "term", value: "jack+johnson")
    ]
    Task{
        let (data, response) = try await URLSession.shared.data(from: myItuneURL.url!)
        
        if let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200, let dataString = String(data: data, encoding: .utf8){
            print(dataString)
        }
    }
    
}
