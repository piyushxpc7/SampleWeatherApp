import SwiftUI

class WeatherViewModel: ObservableObject {
    @Published var selectedCity: String = "Delhi"
    @Published var weather: Weather
    
    init() {
        weather = delhiWeather
    }
    
    func selectedCityBackgroundStyle() -> BackgroundStyle {
        switch selectedCity {
        case "Bangalore":
            return .bangalore
        case "Delhi":
            return .delhi
        case "Mumbai":
            return .mumbai
        case "Chennai":
            return .chennai
        case "Karachi":
            return .karachi
        default:
            return .delhi
        }
    }
    
    func fetchWeather(for city: String) {
        selectedCity = city
        
        switch city {
        case "Delhi":
            weather = delhiWeather
        case "Bangalore":
            weather = bangaloreWeather
        case "Chennai":
            weather = chennaiWeather
        case "Mumbai":
            weather = mumbaiWeather
        case "Karachi":
            weather = karachiWeather
        default:
            break
        }
    }
}
