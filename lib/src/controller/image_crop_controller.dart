import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_kakao_profile_d5354/src/controller/profile_controller.dart';
import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class ImageCropController extends GetxController {
  static ImageCropController get to => Get.find();

  Future<File?> selectImage(ProfileImageType type) async {
    XFile? pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    return _cropImage(pickedFile,type);
  }

  // 이미지 crop(자르기)
  Future<File?> _cropImage(XFile? file, ProfileImageType type) async {
    final croppedFile = await ImageCropper().cropImage(
      sourcePath: file!.path,
      compressFormat: ImageCompressFormat.jpg,
      compressQuality: 100,
      uiSettings: [
        AndroidUiSettings(
            toolbarTitle: 'Cropper',
            toolbarColor: Colors.deepOrange,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),
        IOSUiSettings(
          title: 'Cropper',
        ),
        // WebUiSettings(
        //   context: context,
        //   presentStyle: CropperPresentStyle.dialog,
        //   boundary: const CroppieBoundary(
        //     width: 520,
        //     height: 520,
        //   ),
        //   viewPort:
        //       const CroppieViewPort(width: 480, height: 480, type: 'circle'),
        //   enableExif: true,
        //   enableZoom: true,
        //   showZoomer: true,
        // ),
      ],
    );
    // CroppedFile 형태라서 File 형태로 바꿔줌
    final File cFile = File(croppedFile!.path);
    return cFile;
  }
}
