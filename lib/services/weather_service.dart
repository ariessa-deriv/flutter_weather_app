import 'package:http/http.dart' as http;
import 'package:flutter_weather_app/models/weather_model.dart';

class WeatherService {
  Future<WeatherModel> fetchWeatherInformation(String cityName) async {
    const String apiKey = '8bdbfeab3ab3b71d4dc985d3a71977ea';

    final Uri url = Uri(
      scheme: 'https',
      host: 'api.openweathermap.org',
      path: 'data/2.5/weather',
      queryParameters: {'q': cityName, 'appid': apiKey, 'units': 'metric'},
    );

    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      return WeatherModel.fromJson(response.body);
    } else {
      throw Exception('Failed to load weather information.');
    }
  }
}
