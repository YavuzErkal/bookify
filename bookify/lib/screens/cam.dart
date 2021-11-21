import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class CamScreen extends StatefulWidget {
  const CamScreen({Key key, this.cameras, this.parentAction}) : super(key: key);

  final void Function() parentAction;

  final List<CameraDescription> cameras;

  @override
  _CamScreenState createState() => _CamScreenState();
}

class _CamScreenState extends State<CamScreen> {

  int selectedCamera = 0;
  CameraController _controller;
  Future<void> _initializeControllerFuture;

  initCamera(int cameraIndex) {
    _controller = CameraController(widget.cameras[cameraIndex], ResolutionPreset.medium);

    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void initState() {
    super.initState();
    initCamera(selectedCamera);

    Future.delayed(const Duration(milliseconds: 5000), () {

      widget.parentAction();

    });
  }

  @override
  void dispose() {
    // Dispose of the controller when the widget is disposed.
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder<void>(
        future: _initializeControllerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // If the Future is complete, display the preview.
            return CameraPreview(_controller);
          } else {
            // Otherwise, display a loading indicator.
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
