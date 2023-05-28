import 'package:flutter/material.dart';
import 'package:sabak21_wetherapp_ui/constants/app_colors.dart';
import 'package:sabak21_wetherapp_ui/constants/app_texts.dart';

class MyHomeView extends StatefulWidget {
  const MyHomeView({super.key});

  @override
  State<MyHomeView> createState() => _MyHomeViewState();
}

class _MyHomeViewState extends State<MyHomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBgC,
        elevation: 0,
        title: const Center(
          child: Text(
            'Тыпшырма-09',
            style: AppTextStyles.titlestyle,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/image/bgimage.jpg'),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.near_me),
                  Icon(Icons.location_city),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    '8',
                    style: AppTextStyles.sanTextStyle,
                  ),
                ),
                Image.asset(
                  'assets/image/claodimage.png',
                  height: 150,
                  width: 150,
                )
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Yol\'ll\n need\n and',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 70,
                ),
              ),
            ),
            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Bishkek',
                style: TextStyle(color: Colors.white, fontSize: 80),
              ),
            )
          ],
        ),
      ),
    );
  }
}
