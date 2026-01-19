//
//  ContentView.swift
//  Weather
//
//  Created by GU on 10/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Grid {
            Text("Weekly Weather").font(.largeTitle)
            GridRow {
                WeatherCard(dailyWeather: Weather(day: "Mon",weather: "rainy",lowTemp: 25,highTemp: 30))
                WeatherCard(dailyWeather: Weather(day: "Tue",weather: "sunny",lowTemp: 29,highTemp: 35))
                WeatherCard(dailyWeather: Weather(day: "Wed",weather: "windy",lowTemp: 20,highTemp: 25))
            }
            GridRow {
                WeatherCard(dailyWeather: Weather(day: "Thurs",weather: "windy",lowTemp: 20,highTemp: 25))
                WeatherCard(dailyWeather: Weather(day: "Fri",weather: "rainy",lowTemp: 29,highTemp: 35))
                WeatherCard(dailyWeather: Weather(day: "Sat",weather: "cloudy",lowTemp: 25,highTemp: 30))
            }
            WeatherCard(dailyWeather: Weather(day: "Sun",weather: "rainy",lowTemp: 25,highTemp: 30))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
