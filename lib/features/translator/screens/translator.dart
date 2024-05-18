import 'package:beyond_words/common/widgets/appbar/appbar.dart';
import 'package:beyond_words/features/translator/screens/widgets/camera.dart';
import 'package:beyond_words/utils/constants/sizes.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class TranslatorScreen extends StatefulWidget {
  const TranslatorScreen({super.key});

  @override
  State<TranslatorScreen> createState() => _TranslatorScreenState();
}

class _TranslatorScreenState extends State<TranslatorScreen> {

  late CameraDescription cameraDescription;
  // int _selectedIndex = 0;
  List<Widget>? _widgetOptions;

  bool cameraIsAvailable = Platform.isAndroid || Platform.isIOS;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      initPages();
    });
  }

  initPages() async {
    _widgetOptions = [Container()];

    if (cameraIsAvailable) {
      // get list available camera
      cameraDescription = (await availableCameras()).first;
      _widgetOptions!.add(CameraScreen(camera: cameraDescription));
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // ScreenParams.screenSize = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: const ZAppBar(
          showBackArrow: true,
          actions: [SizedBox(width: 40)],
          title: Center(child: Text('ASL Live Translator'))),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: ZSizes.defaultSpace,
            right: ZSizes.defaultSpace,
            top: ZSizes.defaultSpace / 2,
            bottom: ZSizes.defaultSpace,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Camera
              AspectRatio(
                aspectRatio: 9 / 14,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: _widgetOptions?.elementAt(1),
                ),
              ),
              const SizedBox(height: ZSizes.spaceBetweenItems),
            ],
          ),
        ),
      ),
    );
  }
}
