import 'dart:io';

import 'package:flutter_kakao_profile_d5354/src/controller/image_crop_controller.dart';
import 'package:flutter_kakao_profile_d5354/src/model/user_model.dart';
import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';


// 이미지 crop할때 경우에 따라 다르게 하기
enum ProfileImageType { THUMBNAIL, BACKGROUND }

class ProfileController extends GetxController {
  RxBool isEditMyProfile = false.obs;
  UserModel originMyProfile = UserModel(
    name: "이름들어갈부분",
    discription: "한줄문구들어갈부분",
  );
  Rx<UserModel> myProfile = UserModel().obs;

  @override
  void onInit() {
    isEditMyProfile(false);
    myProfile(UserModel.clone(originMyProfile));
    super.onInit();
  }

  // 토글식 전환
  void toggleEditProfile() {
    isEditMyProfile(!isEditMyProfile.value);
  }

  // 롤백
  void rollback() {
    myProfile.value.InitImageFile();
    myProfile(originMyProfile);
    toggleEditProfile();
  }

  // 이름 바꿀때 처리해주기
  void updateName(String updateName) {
    myProfile.update((my) {
      my!.name = updateName;
    });
  }

  // 이름 바꿀때 처리해주기
  void updateDiscription(String updateDiscription) {
    myProfile.update((my) {
      my!.discription = updateDiscription;
    });
  }

  void pickImage(ProfileImageType type) async {
    if (!isEditMyProfile.value) return;
    File? file = await ImageCropController.to.selectImage(type); 
    switch (type) {
      case ProfileImageType.THUMBNAIL:
        myProfile.update((my) => my!.avatarFile = file);
        break;
      case ProfileImageType.BACKGROUND:
        myProfile.update((my) => my!.backgroundFile = file);
        break;
    }
  }

  // 바꾼 상태 저장
  void save() {
    originMyProfile = myProfile.value;
    toggleEditProfile();
  }
}
