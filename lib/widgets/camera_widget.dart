// import 'package:camera/camera.dart';
// import 'package:flutter/cupertino.dart';
//
// class CameraWidget extends StatefulWidget {
//   @override
//   _CameraWidgetState createState() => _CameraWidgetState();
// }
//
// List<CameraDescription> cameras;
//
// class _CameraWidgetState extends State<CameraWidget> {
//   CameraController controller;
//
//   @override
//   void initState() {
//     super.initState();
//     controller = CameraController(cameras[0], ResolutionPreset.medium);
//     controller.initialize().then((_) {
//       if (!mounted) {
//         return;
//       }
//       setState(() {});
//     });
//   }
//
//   @override
//   void dispose() {
//     controller?.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     if (!controller.value.isInitialized) {
//       return Container();
//     }
//     return AspectRatio(
//         aspectRatio: controller.value.aspectRatio,
//         child: CameraPreview(controller));
//   }
// }
