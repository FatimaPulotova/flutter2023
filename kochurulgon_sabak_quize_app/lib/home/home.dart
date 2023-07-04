import 'package:flutter/material.dart';
import 'package:kochurulgon_sabak_quize_app/constants/app_color.dart';
import 'package:kochurulgon_sabak_quize_app/constants/app_text_styles.dart';
import 'package:kochurulgon_sabak_quize_app/constants/texts.dart';
import 'package:kochurulgon_sabak_quize_app/usefile.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int a = 0;
  int b = 0;
  bool ishtoo = true;
  UseQiuze useQiuze = UseQiuze();
  List<Icon> iconAluus = [];

  void teksheruu(bool koldonuu) {
    late bool correctAnswer = useQiuze.joopAluu();
    setState(() {
      if (useQiuze.isFinished() != true) {
        if (correctAnswer == koldonuu) {
          iconAluus.add(const Icon(
            Icons.check_outlined,
            color: Colors.green,
          ));
          a++;
        } else {
          iconAluus.add(const Icon(
            Icons.close_outlined,
            color: Colors.red,
          ));
          b++;
        }
        useQiuze.nextQuestion();
      } else {
        if (correctAnswer == koldonuu) {
          iconAluus.add(const Icon(
            Icons.check_outlined,
            color: Colors.green,
          ));
          a++;
        } else {
          iconAluus.add(const Icon(
            Icons.close_outlined,
            color: Colors.red,
          ));
          b++;
        }

        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return Center(
              child: AlertDialog(
                title: const Center(
                    child: Text(
                  'Братонио',
                  style: TextStyle(color: Colors.yellow),
                )),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: [
                      const Text("Сиздин тест аягына жетти"),
                      Text(
                        "Туура жооп: $a ",
                        style: const TextStyle(color: Colors.green),
                      ),
                      Text(
                        "Туура эмес жооп: $b",
                        style: const TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                ),
                actions: [
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            a = 0;
                            b = 0;
                            ishtoo = true;
                            iconAluus.clear();
                            Ggg();
                            Navigator.of(context).pop();
                          });
                        },
                        child: const Text(
                          "ТЕСТТЕН КАЙРА ОТУУ",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Ok()));
                        },
                        child: const Text('Майли ака давайте жакшы турун'),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        );
        ishtoo = false;
        useQiuze.indexZero();
      }
    });
  }

  Widget Ok() {
    return AlertDialog(
      title: const Center(
        child: Text(
          'Давай братишка от души!',
          style: TextStyle(color: Colors.yellow),
        ),
      ),
      actions: [
        TextButton(
            onPressed: () {
              setState(() {
                a = 0;
                b = 0;
                ishtoo = true;
                iconAluus.clear();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              });
            },
            child: Text("ok"))
      ],
    );
  }

  Widget Ggg() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        Text(
          useQiuze.surooAluu(),
          style: AppTexstStyles.AppTextStyles,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 100,
        ),
        SizedBox(
          height: 70,
          width: 335,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.trueBgColor),
            onPressed: ishtoo
                ? () {
                    setState(() {
                      teksheruu(true);
                    });
                  }
                : null,
            child: const Text(
              AppTexts.tuura,
              style: AppTexstStyles.trueStyles,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 70,
          width: 335,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.falseBgColor),
            onPressed: ishtoo
                ? () {
                    setState(() {
                      teksheruu(false);
                    });
                  }
                : null,
            child: const Text(
              AppTexts.tuura,
              style: AppTexstStyles.trueStyles,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 40,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: iconAluus.length,
            itemBuilder: (BuildContext context, int i) {
              return iconAluus[i];
            },
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Тапшырма 7',
            style: AppTexstStyles.appBarTexstStyle,
          ),
        ),
        elevation: 0,
        backgroundColor: AppColors.appBarTextColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Ggg(),
        ),
      ),
    );
  }
}
