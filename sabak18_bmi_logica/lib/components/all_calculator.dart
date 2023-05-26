import 'dart:math';

class BmiCalculator {
  double bmi({required double height, required int weight}) {
    final resultat = weight / pow(height / 100, 2);
    return resultat;
  }

  String bmiResult(resultat) {
    if (resultat <= 18.5) {
      // print('Сиз арыксыз:$resultat');
      return 'Сиз арыксыз';
    } else if (resultat >= 18.6 && resultat <= 25) {
      // print('Сиздин салмагыныз нормалдуу:$resultat');
      return 'Нормалдуу';
    } else if (resultat >= 25.1 && resultat <= 30) {
      // print('Сиз ашыкча салмактуусуз:$resultat');
      return 'Сиз ашыкча салмактуусуз';
    } else {
      // print('Сиз семизсиз:$resultat');
      return 'Сиз семизсиз';
    }
  }

  String bmiDescription(resultat) {
    if (resultat <= 18.5) {
      // print('Сиз арыксыз:$resultat');
      return 'Сиз арыксыз. Витаминдуу тамактаныз!';
    } else if (resultat >= 18.6 && resultat <= 25) {
      // print('Сиздин салмагыныз нормалдуу:$resultat');
      return 'Сиздин салмагыныз Нормалдуу. Азаматсыз!';
    } else if (resultat >= 25.1 && resultat <= 30) {
      // print('Сиз ашыкча салмактуусуз:$resultat');
      return 'Сиз ашыкча салмактуусуз. Туура тамактаныныз!';
    } else {
      // print('Сиз семизсиз:$resultat');
      return 'Сиз семизсиз. Спорт менен машыгыныз!Аз жениз!';
    }
  }
}
