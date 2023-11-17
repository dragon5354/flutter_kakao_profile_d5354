import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  // 헤더
  Widget _header() {
    return Positioned(
      // MediaQuery.of(context).padding.top 에 해당하는 부분
      // context를 쓸 수가 없기 때문에 Get을 사용하는 방식으로 대체
      top: Get.mediaQuery.padding.top,
      right: 0,
      left: 0,
      child: Container(
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => print("프로필 편집 취소"),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 16,
                  ),
                  Text(
                    "프로필 편집",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => print("프로필 편집 저장"),
              child: Text(
                "완료",
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // 백그라운드 이미지
  Widget _backgroundImage() {
    // 전체 사이즈 크기 잡기
    return Positioned(
      top: 0,
      bottom: 0,
      right: 0,
      left: 0,
      child: GestureDetector(
        onTap: () => print("change my backgroundImage!"),
        child: Container(
          color: Colors.transparent,
          // color: Colors.red,
        ),
      ),
    );
  }

  // 프로필 내부 이미지
  Widget _profileImage() {
    return Container(
      width: 120,
      height: 120,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          "https://i.stack.imgur.com/l60Hf.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  // 프로필 정보
  Widget _profileInfo() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 12),
          child: Text(
            "이름들어갈부분",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ),
        Text(
          "한줄문구들어갈부분",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  // 프로필
  Widget _myProfile() {
    return Positioned(
      bottom: 120,
      right: 0,
      left: 0,
      child: Container(
        height: 200,
        child: Column(
          children: [
            _profileImage(),
            _profileInfo(),
          ],
        ),
      ),
    );
  }

  // 하단 내부 버튼
  Widget _oneButton(IconData icon, String title, Function()? ontap) {
    return GestureDetector(
      onTap: ontap,
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 12, color: Colors.white),
          )
        ],
      ),
    );
  }

  // 하단
  Widget _footer() {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(
          width: 1,
          color: Colors.white.withOpacity(0.4),
        ))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _oneButton(Icons.chat_bubble, "나와의 채팅", () {}),
            _oneButton(Icons.edit, "프로필 편집", () {}),
            _oneButton(Icons.chat_bubble_outline, "카카오스토리", () {}),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3f3f3f),
      body: Container(
        child: Stack(children: [
          _backgroundImage(),
          _header(),
          _myProfile(),
          _footer(),
        ]),
      ),
    );
  }
}
