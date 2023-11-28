import 'package:flutter_kakao_profile_d5354/src/model/user_model.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  RxBool isEditMyProfile = false.obs;
  Rx<UserModel> myProfile = UserModel(
    name: "이름들어갈부분",
    discription: "한줄문구들어갈부분",
  ).obs;

  @override
  void onInit() {
    isEditMyProfile(false);
    super.onInit();
  }

  // 토글식 전환
  void toggleEditProfile() {
    isEditMyProfile(!isEditMyProfile.value);
  }

  // 이름 바꿀때 처리해주기
  void updateName(String updateName){
    myProfile.update((my) { 
      my!.name = updateName;
    });
  }

  // 이름 바꿀때 처리해주기
  void updateDiscription(String updateDiscription){
    myProfile.update((my) { 
      my!.discription = updateDiscription;
    });
  }
}
