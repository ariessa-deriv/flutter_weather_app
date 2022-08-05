import 'package:flutter/material.dart';
import 'package:flutter_weather_app/models/weather_model.dart';

class WeatherInformation extends StatelessWidget {
  const WeatherInformation({required this.weatherModel, Key? key})
      : super(key: key);

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 50,
      height: MediaQuery.of(context).size.height - 400,
      child: Card(
        child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Image.network(
                    'http://openweathermap.org/img/wn/${weatherModel.weather.first.icon}.png',
                    scale: 0.5),
                const SizedBox(height: 10),
                Text(
                  '${weatherModel.main.temp}°C',
                  style: TextStyle(
                      color: Colors.red.shade300,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Raleway'),
                ),
                const SizedBox(height: 10),
                Text(
                  '${weatherModel.name}',
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Raleway'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 30),
                          Text(
                            'Description',
                            style: TextStyle(
                                color: Colors.grey.shade400,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Raleway'),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Feels like',
                            style: TextStyle(
                                color: Colors.grey.shade400,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Raleway'),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Humidity',
                            style: TextStyle(
                                color: Colors.grey.shade400,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Raleway'),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Pressure',
                            style: TextStyle(
                                color: Colors.grey.shade400,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Raleway'),
                          ),
                        ]),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const SizedBox(height: 30),
                          Text(
                              '${weatherModel.weather.first.description[0].toUpperCase()}${weatherModel.weather.first.description.substring(1, weatherModel.weather.first.description.length)}',
                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Raleway')),
                          const SizedBox(height: 10),
                          Text('${weatherModel.main.feelsLike}°C',
                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Raleway')),
                          const SizedBox(height: 10),
                          Text('${weatherModel.main.humidity}%',
                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Raleway')),
                          const SizedBox(height: 10),
                          Text('${weatherModel.main.pressure} hPa',
                              style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'Raleway')),
                        ]),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
