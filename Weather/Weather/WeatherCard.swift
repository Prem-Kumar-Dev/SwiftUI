//
//  WeatherCard.swift
//  Weather
//
//  Created by GU on 10/12/25.
//

import SwiftUI

struct WeatherCard: View {
    var dailyWeather : Weather = Weather()
    var body: some View {
        VStack {
            Text(dailyWeather.day).bold()
            switch(dailyWeather.weather) {
            case "rainy" :
                Image(systemName: "cloud.rain.fill").font(.largeTitle).frame(height: 25)
            case "windy" :
                Image(systemName: "wind").font(.largeTitle).frame(height: 25)
            case "sunny" :
                Image(systemName: "sun.max.fill").font(.largeTitle).frame(height: 25)
            case "cloudy" :
                Image(systemName: "cloud.fill").font(.largeTitle).frame(height: 25)
            default :
                Image(systemName: "").font(.largeTitle)
            }
            Text(dailyWeather.weather)
            Text("Low \(dailyWeather.lowTemp)")
            Text("High \(dailyWeather.highTemp)")
        }.padding().border(Color.primary)
    }
}

#Preview {
    WeatherCard()
}
