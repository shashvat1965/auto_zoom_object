import 'package:auto_zoom_object/camera.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List<CameraDescription> _cameras;

  getCameras() async {
    _cameras = await availableCameras();
  }

  @override
  void initState() {
    super.initState();
    getCameras();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CameraScreen(
                            cameras: _cameras,
                          )));
            },
            child: const Text("Camera")),
      ),
    );
  }
}
