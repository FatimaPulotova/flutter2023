import 'dart:io';

void main() {
  resultTasks();
}

void resultTasks() async {
  task1();
  String stringTask2 = await task2(); //await-куттуруу
  task3(stringTask2);
}

void task1() {
  print('task1 chykty');
}

//task2 task3ко стрин брип жатат
//Future-келечекте бериле турган нерсени билдирет
Future<String> task2() async {
  Duration threeSeconds = Duration(seconds: 4);
  String? result;
  // //Duration озуно убакыттарды алат андагы убакытты колдонуу учун
  // sleep(threeSeconds); //колдонулат  sleep-бул синхронный операция
  await Future.delayed(threeSeconds, () {
    result = 'Task 2 Data';
    print('tas2 chykty');
    // Future.delayed=acync те колдонулат
  });
  return result.toString();
}

void task3(String task2String) {
  print('task3 chykty: $task2String');
}
