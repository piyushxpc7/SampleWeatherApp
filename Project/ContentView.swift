import SwiftUI

struct WeatherView: View {
    @StateObject var viewModel = WeatherViewModel()
    let cities = ["Bangalore", "Delhi", "Mumbai", "Chennai", "Karachi"]
    let cityColors: [Color] = [.blue, .orange, .green, .pink, .purple]
    
    var body: some View {
        NavigationView {
            ZStack {
                BackgroundView(style: viewModel.selectedCityBackgroundStyle())
                
                VStack {
                    Text("Weather in \(viewModel.selectedCity)")
                        .font(.title)
                        .foregroundColor(.white)
                    
                    WeatherDetailView(weather: viewModel.weather)
                        .padding()
                    
                    Text("Hourly Forecast")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.top)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach(viewModel.weather.hourlyForecast, id: \.time) { forecast in
                                HourlyForecastView(forecast: forecast)
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    Text("Daily Forecast")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.top)
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing: 20) {
                            ForEach(viewModel.weather.dailyForecast, id: \.day) { forecast in
                                DailyForecastView(forecast: forecast)
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    Spacer()
                }
                
                VStack {
                    Spacer()
                    HStack {
                        ForEach(cities.indices, id: \.self) { index in
                            Button(action: {
                                viewModel.fetchWeather(for: cities[index])
                            }) {
                                Text(cities[index])
                                    .font(.headline)
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(cityColors[index])
                                    .cornerRadius(10)
                            }
                            if index != cities.indices.last {
                                Spacer()
                            }
                        }
                    }
                    .padding(.bottom)
                }
            }
            .navigationBarItems(trailing:
                Button(action: { }) {
                   
                }
            )
            .onAppear {
                
                viewModel.fetchWeather(for: viewModel.selectedCity)
            }
            .navigationTitle("")
            .navigationBarHidden(true)
        }
    }
}

enum BackgroundStyle {
    case bangalore
    case delhi
    case mumbai
    case chennai
    case karachi
    
    var colors: [Color] {
        switch self {
        case .bangalore:
            return [Color(red: 0.0, green: 0.2, blue: 0.2), Color(red: 0.0, green: 0.5, blue: 0.5)] // Adjust colors for Bangalore
        case .delhi:
            return [Color(red: 0.11, green: 0.11, blue: 0.11), Color(red: 0.31, green: 0.13, blue: 0.17)] // Default colors for Delhi
        case .mumbai:
            return [Color(red: 0.2, green: 0.0, blue: 0.2), Color(red: 0.5, green: 0.0, blue: 0.5)] // Adjust colors for Mumbai
        case .chennai:
            return [Color(red: 0.2, green: 0.2, blue: 0.0), Color(red: 0.5, green: 0.5, blue: 0.0)] // Adjust colors for Chennai
        case .karachi:
            return [Color(red: 0.2, green: 0.0, blue: 0.0), Color(red: 0.5, green: 0.0, blue: 0.0)] // Adjust colors for Karachi
        }
    }
}

struct BackgroundView: View {
    let style: BackgroundStyle
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: style.colors), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
    }
}

struct WeatherDetailView: View {
    let weather: Weather
    
    var body: some View {
        VStack {
            Text("\(Int(weather.temperature))°")
                .font(.system(size: 70))
                .foregroundColor(.white)
            Text("\(weather.weatherType)")
                .font(.headline)
                .foregroundColor(.white)
        }
    }
}

struct HourlyForecastView: View {
    let forecast: HourlyForecast
    
    var body: some View {
        VStack {
            Text(forecast.time)
                .font(.caption)
                .foregroundColor(.white)
            Text("\(Int(forecast.temperature))°")
                .font(.headline)
                .foregroundColor(.white)
            Text("\(forecast.weatherType)")
                .font(.caption)
                .foregroundColor(.white)
        }
    }
}

struct DailyForecastView: View {
    let forecast: DailyForecast
    
    var body: some View {
        HStack {
            Text(forecast.day)
                .font(.headline)
                .foregroundColor(.white)
            Spacer()
            Text("\(Int(forecast.temperature))°")
                .font(.headline)
                .foregroundColor(.white)
            Text("\(forecast.weatherType)")
                .font(.caption)
                .foregroundColor(.white)
        }
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView()
    }
}
