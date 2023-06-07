import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:sabak24_geoiocator_and_lists_of_cities/app.dart';
import 'package:sabak24_geoiocator_and_lists_of_cities/constants/api_const.dart';
import 'package:sabak24_geoiocator_and_lists_of_cities/constants/app_colors.dart';
import 'package:sabak24_geoiocator_and_lists_of_cities/constants/app_texts.dart';
import 'package:sabak24_geoiocator_and_lists_of_cities/constants/list_cities.dart';
import 'package:sabak24_geoiocator_and_lists_of_cities/model.dart';

void main() {
  runApp(const MyApp());
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Weather? weather;
  Future<void> getlocation() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
    if (permission == LocationPermission.always &&
        permission == LocationPermission.whileInUse) {
      Position position = await Geolocator.getCurrentPosition();
      Dio dio = Dio();
      final response = await dio.get(
          ApiConst.address(lat: position.latitude, lon: position.longitude));
      if (response.statusCode == 200) {
        weather = Weather(
          id: response.data['current']['weather'][0]['id'],
          main: response.data['current']['weather'][0]['main'],
          description: response.data['current']['weather'][0]['description'],
          icon: response.data['current']['weather'][0]['icon'],
          temp: response.data['current']['temp'],
          name: response.data['timezone'],
        );
      }
      setState(() {});
    } else {
      Position position = await Geolocator.getCurrentPosition();
      Dio dio = Dio();
      final response = await dio.get(
          ApiConst.address(lat: position.latitude, lon: position.longitude));
      if (response.statusCode == 200) {
        weather = Weather(
          id: response.data['current']['weather'][0]['id'],
          main: response.data['current']['weather'][0]['main'],
          description: response.data['current']['weather'][0]['description'],
          icon: response.data['current']['weather'][0]['icon'],
          temp: response.data['current']['temp'],
          name: response.data['timezone'],
        );
      }
      setState(() {});
    }
  }

////////////////////////////////////////////////////////////
  Future<void> fetchData([String? url]) async {
    Dio dio = Dio();

    final response = await dio.get(ApiConst.weatherData(url ?? 'bishkek'));
    if (response.statusCode == 200) {
      weather = Weather(
        id: response.data['weather'][0]['id'],
        main: response.data['weather'][0]['main'],
        description: response.data['weather'][0]['description'],
        icon: response.data['weather'][0]['icon'],
        temp: response.data['main']['temp'],
        name: response.data['name'],
      );
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Weather App'),
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: weather == null
            ? const CircularProgressIndicator()
            : Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/bgimage.jpg',
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, top: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () async {
                              await getlocation();
                            },
                            icon: const Icon(
                              Icons.near_me,
                              color: AppColors.iconColor,
                              size: 40,
                            ),
                          ),
                          IconButton(
                            onPressed: () async {
                              showBottom();
                            },
                            icon: const Icon(
                              Icons.location_city,
                              color: AppColors.iconColor,
                              size: 40,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            '${(weather!.temp - 273.15).toInt()}\u00B0',
                            style: AppTextStyles.sanTextStyle,
                          ),
                        ),
                        Image.network(
                          ApiConst.getIcon(weather!.icon, 4),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: FittedBox(
                        child: Text(
                          weather!.description.replaceAll(' ', '\n'),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 70,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: FittedBox(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            weather!.name,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 70),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
      ),
    );
  }

  void showBottom() async {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[700],
          ),
          child: ListView.builder(
            itemCount: cities.length,
            itemBuilder: (context, index) {
              final city = cities[index];
              return Card(
                child: ListTile(
                  onTap: () {
                    setState(() {
                      weather = null;
                    });
                    fetchData(city);
                    Navigator.pop(context);
                  },
                  title: Text(
                    '$city',
                    style: AppTextStyles.showTextStyle,
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
