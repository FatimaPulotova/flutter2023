import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sabak23_wether_app_add_data_to_ui/constants/api_const.dart';
import 'package:sabak23_wether_app_add_data_to_ui/constants/app_colors.dart';
import 'package:sabak23_wether_app_add_data_to_ui/constants/app_texts.dart';
import 'package:sabak23_wether_app_add_data_to_ui/model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  dynamic respons;
  Future<Weather?> fetchData() async {
    Dio dio = Dio();
    // await Future.delayed(Duration(seconds: 7));
    final response = await dio.get(ApiConst.weatherData);
    if (response.statusCode == 200) {
      final Weather weather = Weather(
        id: response.data['weather'][0]['id'],
        main: response.data['weather'][0]['main'],
        description: response.data['weather'][0]['description'],
        icon: response.data['weather'][0]['icon'],
        temp: response.data['main']['temp'],
        name: response.data['name'],
      );
      return weather;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Weather App'),
        ),
      ),
      body: Center(
        child: FutureBuilder(
          future: fetchData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.none) {
              return const Text('Сизде интернет байланышы узулду');
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Text('${snapshot.error}');
              } else if (snapshot.hasData) {
                final pogoda = snapshot.data;
                return Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/image/bgimage.jpg',
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
                          children: const [
                            Icon(
                              Icons.near_me,
                              color: AppColors.appBgC,
                              size: 40,
                            ),
                            Icon(
                              Icons.location_city,
                              color: AppColors.appBgC,
                              size: 40,
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
                              '${(pogoda!.temp - 273.15).toInt()}',
                              style: AppTextStyles.sanTextStyle,
                            ),
                          ),
                          Image.network(
                            ApiConst.getIcon(pogoda.icon, 4),
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
                            pogoda.description.replaceAll(' ', '\n'),
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
                          pogoda.name,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 70),
                        ),
                      )))
                    ],
                  ),
                );
              } else {
                return const Text('Дата келген жок');
              }
            } else {
              return const Text('Белгисиз катачылыктар болуп жатат');
            }
          },
        ),
      ),
    );
  }
}
