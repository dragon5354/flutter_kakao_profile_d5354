import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  // 백그라운드 이미지
  Widget _backgroundImage() {
    // 전체 사이즈 크기 잡기
    return Positioned(
      top: 0,
      bottom: 0,
      right: 0,
      left: 0,
      child: Container(
        // color: Colors.red,
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
        ]),
      ),
    );
  }
}
