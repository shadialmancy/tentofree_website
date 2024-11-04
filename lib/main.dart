
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app/view/app.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'src/core/provider/app_startup_provider.dart';


void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  setUrlStrategy(PathUrlStrategy());
  final ProviderContainer container = ProviderContainer();
  await container.read(appStartupProvider.future);
  runApp(UncontrolledProviderScope(
    container: container,
    child: const App(),
  ));
}
