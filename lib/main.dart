import 'package:flutter/material.dart';
import 'package:flutter_kakao_profile_d5354/src/controller/image_crop_controller.dart';
import 'package:flutter_kakao_profile_d5354/src/controller/profile_controller.dart';
import 'package:flutter_kakao_profile_d5354/src/profile.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'ImageCropper',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      initialBinding: BindingsBuilder(() {
        Get.lazyPut<ProfileController>(() => ProfileController());
        Get.lazyPut<ImageCropController>(() => ImageCropController());
      }),
      home: Profile(),
    );
  }
}
