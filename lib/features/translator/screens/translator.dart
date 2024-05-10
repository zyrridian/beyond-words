import 'package:beyond_words/common/widgets/appbar/appbar.dart';
import 'package:beyond_words/utils/constants/sizes.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

// import '../../../main.dart';

class TranslatorScreen extends StatefulWidget {
  const TranslatorScreen({super.key});

  @override
  State<TranslatorScreen> createState() => _TranslatorScreenState();
}

class _TranslatorScreenState extends State<TranslatorScreen> {
  late CameraController _controller;
  late CameraImage? cameraImage;
  String answer = '';
  bool _isFrontCamera = false;
  bool _isMirrored = false;

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  void _initializeCamera() async {
    final cameras = await availableCameras();
    setState(() {
      _controller = CameraController(
        cameras[_isFrontCamera ? 1 : 0], // Selecting front or back camera based on _isFrontCamera
        ResolutionPreset.max,
        imageFormatGroup: ImageFormatGroup.jpeg,
      );
      _controller.initialize().then((_) {
        if (!mounted) {
          return;
        }
        setState(() {});
      }).catchError((error) {
        print('Error initializing camera: $error');
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleCamera() {
    setState(() {
      _isFrontCamera = !_isFrontCamera;
      _initializeCamera();
    });
  }

  // void _toggleMirror() {
  //   setState(() {
  //     _isMirrored = !_isMirrored;
  //     _controller.setMirror(_isMirrored);
  //   });
  // }

  @override
  Widget build(BuildContext context) {

    // final size = MediaQuery.of(context).size;
    // final deviceRatio = size.width / size.height;

    if (!_controller.value.isInitialized) {
      return const Center(child: CircularProgressIndicator());
    }
    return Scaffold(
      appBar: const ZAppBar(
        showBackArrow: true,
        actions: [SizedBox(width: 40)],
        title: Center(child: Text('ASL Live Translator'))
      ),
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
                aspectRatio: 9/14,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: CameraPreview(_controller),
                ),
              ),
              const SizedBox(height: ZSizes.spaceBetweenItems),

              /// Text
              const Text('| Hello', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
              const Text('| Yes', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
              const Text('| Thank You', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
              const SizedBox(height: ZSizes.spaceBetweenItems),

              /// Buttons for switching camera and mirroring
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: _toggleCamera,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(_isFrontCamera ? 'Switch to Back' : 'Switch to Front'),
                    ),
                  ),
                  ElevatedButton(
                    // onPressed: _toggleMirror,
                    onPressed: () {},
                    child: Text(_isMirrored ? 'Unmirror' : 'Mirror'),
                  ),
                ],
              ),

              const SizedBox(height: ZSizes.spaceBetweenItems * 5),
            ],
          ),
        ),
      ),
    );
    // return AspectRatio(
    //   aspectRatio: _controller.value.aspectRatio,
    //   child: CameraPreview(_controller),
    // );
  }
}
