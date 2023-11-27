import 'package:get/get.dart';

class ProfileController extends GetxController{

  RxBool isEditMyProfile = false.obs;

  @override
  void onInit() {
    isEditMyProfile(false);
    super.onInit();
  }

  // 토글식 전환
  void toggleEditProfile() {
    isEditMyProfile(!isEditMyProfile.value);
  }
}