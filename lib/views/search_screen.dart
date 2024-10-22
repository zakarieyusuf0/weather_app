// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:weather/weather.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  Weather? weather;
  final openWeather = WeatherFactory('e772dea156dc6287189424005ac4cd55');
  String cityname = '';
  getweather() async {
    try {
      weather = await openWeather.currentWeatherByCityName(cityname);
      setState(() {});
    } catch (e) {
      print('Enter Valid City $e ');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('Search By city'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  cityname = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'City Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                ),
                suffix: IconButton(
                  onPressed: () {
                    getweather();
                  },
                  icon: Icon(
                    Icons.search,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: weather != null
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${weather!.temperature!.celsius!.round()} °C ',
                        style: TextStyle(
                          fontSize: 35,
                        ),
                      ),
                      Text(
                        '${weather!.weatherDescription}',
                        style: TextStyle(
                          fontSize: 35,
                        ),
                      ),
                    ],
                  )
                : SizedBox(),
          ),
        ],
      ),
    );
  }
}
