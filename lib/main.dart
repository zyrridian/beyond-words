import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import 'app.dart';

late List<CameraDescription> cameras;

Future<void> main() async {

  // Todo: Add Widgets Binding
  // Todo: Init Local Storage
  // Todo: Await Native Splash
  // Todo: Initialize Firebase
  // Todo: Initialize Authentication

  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(const App());

}