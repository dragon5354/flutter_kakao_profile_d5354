// 이름이나 상태메시지 등 수정버튼 눌렀을때 띄울 페이지
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextEditorWidget extends StatefulWidget {
  final String text;
  const TextEditorWidget({super.key, required this.text});

  @override
  State<TextEditorWidget> createState() => _TextEditorWidgetState();
}

class _TextEditorWidgetState extends State<TextEditorWidget> {
  late TextEditingController _textEditingController;

  @override
  void initState() {
    _textEditingController = TextEditingController();
    _textEditingController.text = widget.text;
    super.initState();
  }


  Widget _header() {
    return Container(
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => Get.back(),
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
            // 완료시 뒤로 가게 하면서 값 넘기기
            onTap: () => Get.back(result: _textEditingController.text),
            child: Text(
              "완료",
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget _editTextField() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: TextField(
          controller: _textEditingController,
          maxLength: 20,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18,color: Colors.white),
          decoration: InputDecoration(
              hintText: "텍스트",
              hintStyle: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
              counterStyle: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              )),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.all(0),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: Column(
        children: [_header(), Expanded(child: _editTextField())],
      ),
    );
  }
}
