import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImageCropController extends GetxController {
  static ImageCropController get to => Get.find();

  Future<File> selectImage() async{
    XFile? pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    return File(pickedFile!.path);
  }
}