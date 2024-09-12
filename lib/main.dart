import 'package:flutter/material.dart';
import 'app/view/app.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
void main() async {
  setUrlStrategy(PathUrlStrategy());
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}
