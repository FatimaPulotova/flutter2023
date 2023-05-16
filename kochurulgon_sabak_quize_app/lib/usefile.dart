import 'package:kochurulgon_sabak_quize_app/model.dart';

class UseQuize {
  int index = 0;

  List<quizeModel> SurooJoop = [
    quizeModel(suroo: 'Кыргызстанда 7 область барбы?', joop: true),
    quizeModel(suroo: 'Сулайман Тоо Жалал-Фбад областындабы?', joop: false),
    quizeModel(suroo: 'Маймыл бакка чыга алабы?', joop: true),
    quizeModel(suroo: 'Жер торт бурчтукпу?', joop: false),
    quizeModel(suroo: 'Балык сууда сузобу?', joop: true),
  ];

  String SurooAluu() {
    return SurooJoop[index].suroo;
  }

  bool JoopAluu() {
    return SurooJoop[index].joop;
  }

  void nextQwestion() {
    if (index <= SurooJoop.length) {
      index++;
    }
  }

  bool isFinished() {
    if (SurooJoop[index] == SurooJoop.last) {
      return true;
    } else {
      return false;
    }
  }

  void indexZero() {
    index = 0;
  }
}
