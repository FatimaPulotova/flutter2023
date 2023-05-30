//fetch-алып келуу
import 'package:dio/dio.dart';

void main() async {
  final dio = Dio();
  final response = await dio.get('https://jsonplaceholder.typicode.com/posts');
  print(response);
}
