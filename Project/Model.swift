import Foundation

struct Weather {
    let city: String
    let temperature: Double
    let weatherType: WeatherType
    let hourlyForecast: [HourlyForecast]
    let dailyForecast: [DailyForecast]
}

struct HourlyForecast {
    let time: String
    let temperature: Double
    let weatherType: WeatherType
}

struct DailyForecast {
    let day: String
    let temperature: Double
    let weatherType: WeatherType
}

enum WeatherType {
    case cloudy
    case sunny
    case rainy
    case stormy
    case clearSky
}

// Mock Data for Delhi
let delhiHourlyForecast: [HourlyForecast] = [
    HourlyForecast(time: "12:00 AM", temperature: 30, weatherType: .sunny),
    HourlyForecast(time: "1:00 AM", temperature: 29, weatherType: .sunny),
    HourlyForecast(time: "2:00 AM", temperature: 29, weatherType: .sunny),
    HourlyForecast(time: "3:00 AM", temperature: 28, weatherType: .sunny),
    HourlyForecast(time: "4:00 AM", temperature: 28, weatherType: .sunny)
    // Add more hourly forecasts...
]

let delhiDailyForecast: [DailyForecast] = [
    DailyForecast(day: "Tomorrow", temperature: 35, weatherType: .sunny),
    DailyForecast(day: "Day after Tomorrow", temperature: 36, weatherType: .sunny),
    DailyForecast(day: "Next Day", temperature: 34, weatherType: .sunny),
    DailyForecast(day: "In Four Days", temperature: 33, weatherType: .sunny),
    DailyForecast(day: "In Five Days", temperature: 35, weatherType: .sunny),
    DailyForecast(day: "In Six Days", temperature: 36, weatherType: .sunny),
    DailyForecast(day: "In Seven Days", temperature: 34, weatherType: .sunny),
    DailyForecast(day: "In Eight Days", temperature: 33, weatherType: .sunny),
    DailyForecast(day: "In Nine Days", temperature: 35, weatherType: .sunny),
    DailyForecast(day: "In Ten Days", temperature: 36, weatherType: .sunny)
 
]

let delhiWeather = Weather(city: "Delhi", temperature: 30, weatherType: .sunny, hourlyForecast: delhiHourlyForecast, dailyForecast: delhiDailyForecast)


let bangaloreHourlyForecast: [HourlyForecast] = [
    HourlyForecast(time: "12:00 AM", temperature: 25, weatherType: .cloudy),
    HourlyForecast(time: "1:00 AM", temperature: 24, weatherType: .cloudy),
    HourlyForecast(time: "2:00 AM", temperature: 24, weatherType: .cloudy),
    HourlyForecast(time: "3:00 AM", temperature: 23, weatherType: .cloudy),
    HourlyForecast(time: "4:00 AM", temperature: 23, weatherType: .cloudy)

]

let bangaloreDailyForecast: [DailyForecast] = [
    DailyForecast(day: "Tomorrow", temperature: 27, weatherType: .rainy),
    DailyForecast(day: "Day after Tomorrow", temperature: 26, weatherType: .rainy),
    DailyForecast(day: "Next Day", temperature: 28, weatherType: .rainy),
    DailyForecast(day: "In Four Days", temperature: 26, weatherType: .rainy),
    DailyForecast(day: "In Five Days", temperature: 27, weatherType: .rainy),
    DailyForecast(day: "In Six Days", temperature: 28, weatherType: .rainy),
    DailyForecast(day: "In Seven Days", temperature: 29, weatherType: .rainy),
    DailyForecast(day: "In Eight Days", temperature: 28, weatherType: .rainy),
    DailyForecast(day: "In Nine Days", temperature: 29, weatherType: .rainy),
    DailyForecast(day: "In Ten Days", temperature: 30, weatherType: .rainy)
    // Add more daily forecasts...
]

let bangaloreWeather = Weather(city: "Bangalore", temperature: 25, weatherType: .cloudy, hourlyForecast: bangaloreHourlyForecast, dailyForecast: bangaloreDailyForecast)

// Mock Data for Chennai
let chennaiHourlyForecast: [HourlyForecast] = [
    HourlyForecast(time: "12:00 AM", temperature: 28, weatherType: .sunny),
    HourlyForecast(time: "1:00 AM", temperature: 27, weatherType: .sunny),
    HourlyForecast(time: "2:00 AM", temperature: 27, weatherType: .sunny),
    HourlyForecast(time: "3:00 AM", temperature: 26, weatherType: .sunny),
    HourlyForecast(time: "4:00 AM", temperature: 26, weatherType: .sunny)

]

let chennaiDailyForecast: [DailyForecast] = [
    DailyForecast(day: "Tomorrow", temperature: 30, weatherType: .sunny),
    DailyForecast(day: "Day after Tomorrow", temperature: 31, weatherType: .sunny),
    DailyForecast(day: "Next Day", temperature: 32, weatherType: .sunny),
    DailyForecast(day: "In Four Days", temperature: 31, weatherType: .sunny),
    DailyForecast(day: "In Five Days", temperature: 30, weatherType: .sunny),
    DailyForecast(day: "In Six Days", temperature: 31, weatherType: .sunny),
    DailyForecast(day: "In Seven Days", temperature: 32, weatherType: .sunny),
    DailyForecast(day: "In Eight Days", temperature: 31, weatherType: .sunny),
    DailyForecast(day: "In Nine Days", temperature: 30, weatherType: .sunny),
    DailyForecast(day: "In Ten Days", temperature: 29, weatherType: .sunny)

]

let chennaiWeather = Weather(city: "Chennai", temperature: 28, weatherType: .sunny, hourlyForecast: chennaiHourlyForecast, dailyForecast: chennaiDailyForecast)


let mumbaiHourlyForecast: [HourlyForecast] = [
    HourlyForecast(time: "12:00 AM", temperature: 29, weatherType: .clearSky),
    HourlyForecast(time: "1:00 AM", temperature: 28, weatherType: .clearSky),
    HourlyForecast(time: "2:00 AM", temperature: 28, weatherType: .clearSky),
    HourlyForecast(time: "3:00 AM", temperature: 27, weatherType: .clearSky),
    HourlyForecast(time: "4:00 AM", temperature: 27, weatherType: .clearSky)

]

let mumbaiDailyForecast: [DailyForecast] = [
    DailyForecast(day: "Tomorrow", temperature: 31, weatherType: .clearSky),
    DailyForecast(day: "Day after Tomorrow", temperature: 32, weatherType: .clearSky),
    DailyForecast(day: "Next Day", temperature: 33, weatherType: .clearSky),
    DailyForecast(day: "In Four Days", temperature: 32, weatherType: .clearSky),
    DailyForecast(day: "In Five Days", temperature: 31, weatherType: .clearSky),
    DailyForecast(day: "In Six Days", temperature: 30, weatherType: .clearSky),
    DailyForecast(day: "In Seven Days", temperature: 31, weatherType: .clearSky),
    DailyForecast(day: "In Eight Days", temperature: 32, weatherType: .clearSky),
    DailyForecast(day: "In Nine Days", temperature: 31, weatherType: .clearSky),
    DailyForecast(day: "In Ten Days", temperature: 30, weatherType: .clearSky)

]

let mumbaiWeather = Weather(city: "Mumbai", temperature: 29, weatherType: .clearSky, hourlyForecast: mumbaiHourlyForecast, dailyForecast: mumbaiDailyForecast)

let karachiHourlyForecast: [HourlyForecast] = [
    HourlyForecast(time: "12:00 AM", temperature: 26, weatherType: .stormy),
    HourlyForecast(time: "1:00 AM", temperature: 25, weatherType: .stormy),
    HourlyForecast(time: "2:00 AM", temperature: 25, weatherType: .stormy),
    HourlyForecast(time: "3:00 AM", temperature: 24, weatherType: .stormy),
    HourlyForecast(time: "4:00 AM", temperature: 24, weatherType: .stormy)

]

let karachiDailyForecast: [DailyForecast] = [
    DailyForecast(day: "Tomorrow", temperature: 28, weatherType: .stormy),
    DailyForecast(day: "Day after Tomorrow", temperature: 29, weatherType: .stormy),
    DailyForecast(day: "Next Day", temperature: 30, weatherType: .stormy),
    DailyForecast(day: "In Four Days", temperature: 29, weatherType: .stormy),
    DailyForecast(day: "In Five Days", temperature: 28, weatherType: .stormy),
    DailyForecast(day: "In Six Days", temperature: 27, weatherType: .stormy),
    DailyForecast(day: "In Seven Days", temperature: 28, weatherType: .stormy),
    DailyForecast(day: "In Eight Days", temperature: 29, weatherType: .stormy),
    DailyForecast(day: "In Nine Days", temperature: 30, weatherType: .stormy),
    DailyForecast(day: "In Ten Days", temperature: 29, weatherType: .stormy)

]

let karachiWeather = Weather(city: "Karachi", temperature: 26, weatherType: .stormy, hourlyForecast: karachiHourlyForecast, dailyForecast: karachiDailyForecast)
