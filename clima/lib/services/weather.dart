import 'package:clima/screens/location.dart';
import 'networking.dart';

const apiKey = 'e72ca729af228beabd5d20e3b7749713';

class WeatherModel {

  NetworkHelper networkHelper;
  var weatherData;

  Future<dynamic> getCityWeather(String cityName)async {
    var url ='https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$apiKey&units=metric';
    networkHelper = NetworkHelper(url);
    weatherData = await networkHelper.getData();
    return weatherData;
  }
  
  Future<dynamic> getLocationWeather() async{
    Location location = Location();
    await location.getLocation();
    networkHelper = NetworkHelper('https://api.openweathermap.org/data/2.5/weather?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric');
    weatherData = await networkHelper.getData();
    return weatherData;
  }
  
  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
