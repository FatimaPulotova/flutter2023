import 'package:flutter/material.dart';
import 'package:sabak11_piano_app_ui/app/app.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}
