import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {// 뭔가를 눌렀을 때 페이지의 변화가 있을때 StatefulWidget를 사용 아니면 less를 사용
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(//화면 전체를 구성
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: SingleChildScrollView(//한페이지가 넘어갈때 스크롤을 사용할 수 있도록
        child: Container(// 화면 일부분
          color: Colors.white54,
          child: Column(
            children: [
              Column(// 가로로
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(// containor안에 하나더
                    color: Colors.red,
                    width: 150,
                    height: 150,
                    margin: const EdgeInsets.all(10),
                  ),
                  Container(// containor안에 하나더
                    color: Colors.red,
                    width: 150,
                    height: 150,
                    margin: const EdgeInsets.all(10),
                  ),


                  OutlinedButton(onPressed: (){
                    final snackBar = SnackBar(
                        content: const Text("Yay! A Snacker"),
                        action: SnackBarAction(
                          label: 'Undo',
                          onPressed: (){},
                        ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }, child: Text("Outlined Button")),

                  ElevatedButton.icon(
                      onPressed:() {},
                    icon: Icon(Icons.add_alarm, size: 20),
                    label: Text("Elevated Button"),
                      ),

                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          'asset/img/KakaoTalk_20230110_120249155.jpg',
                          width: 200,
                          height: 150,
                        ),
                      ),
                    ],
                  ),

                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
