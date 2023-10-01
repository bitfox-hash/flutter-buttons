import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('button'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('ButtonStyle'),
              style: ButtonStyle(
                // Material State
                // hovered - (마우스 커서를 올려놓은상태)
                // focused - 포커스 됐을때(텍스트 필드)
                // pressed - 눌렸을때 (o)
                // dragged - 드래그 됐을때
                // selected - 선택됐을때
                // scrollUnder - 다른  컴포넌트 밑으로 스크롤링 됐을때
                // disabled - 비활성화 됐을때 (o)
                // error - 에러상태
                backgroundColor: MaterialStateProperty.resolveWith(
                  (Set<MaterialState> state) {
                    if (state.contains(MaterialState.pressed)) {
                      return Colors.green;
                    }

                    return Colors.black;
                  },
                ),
                foregroundColor: MaterialStateProperty.resolveWith(
                  (Set<MaterialState> state) {
                    if (state.contains(MaterialState.pressed)) {
                      print(state);

                      return Colors.white;
                    }
                    return Colors.red;
                  },
                ),
                padding: MaterialStateProperty.resolveWith((Set<MaterialState> state) {
                  if(state.contains(MaterialState.pressed)) {
                    return EdgeInsets.all(100.0);
                  }
                  return EdgeInsets.all(20.0);
                },)
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                //메인 컬러
                // primary: Colors.red,
                backgroundColor: Colors.red,
                //글자 및 애니메이션 컬러
                // onPrimary: Colors.black,
                foregroundColor: Colors.black,
                //그림자 컬러
                shadowColor: Colors.green,
                //그림자 강조
                elevation: 10.0,
                textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0,
                ),
                padding: EdgeInsets.all(32.0),
                side: BorderSide(
                  color: Colors.black,
                  width: 4.0,
                ),
              ),
              onPressed: () {},
              child: Text(
                'ElevatedButton',
              ),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: Colors.green,
                backgroundColor: Colors.yellow,
              ),
              onPressed: () {},
              child: Text('OutlinedButton'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.brown,
                backgroundColor: Colors.blue,
              ),
              onPressed: () {},
              child: Text('TextButton'),
            )
          ],
        ),
      ),
    );
  }
}
