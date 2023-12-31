import 'dart:io';

class UserModel {
  String? uid; // Firebase sns 로그인시 고유한 고객의 키
  String? docId; // Firestore에 데이터 저장시 ID
  String? name; // 프로필란의 이름
  String? discription; // 프로필란의 설명
  String? avatarUrl; // 프로필 사진 주소
  String? backgroundUrl; // 배경 사진 주소
  File? avatarFile;
  File? backgroundFile;
  DateTime? lastLoginTime;
  DateTime? createdTime;


  UserModel({
    this.uid,
    this.docId,
    this.name,
    this.discription,
    this.avatarUrl,
    this.backgroundUrl,
    this.lastLoginTime,
    this.createdTime,
  });

  UserModel.clone(UserModel user)  : this(
    uid: user.uid,
    docId: user.docId,
    name: user.name,
    discription: user.discription,
    avatarUrl: user.avatarUrl,
    backgroundUrl: user.backgroundUrl,
    lastLoginTime: user.lastLoginTime,
    createdTime: user.createdTime,
  );

  void InitImageFile(){
    avatarFile = null;
    backgroundFile = null;
  }
}