import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery
        .of(context)
        .size;
    double width = screenSize.width;
    double height = screenSize.height;

    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text('My Quiz APP'),
              backgroundColor: Colors.deepPurple,
              leading: Container(), // 앱바에서 좌측 버튼을 지우는 효과를 가지고 있음(자동으로 로딩되는 뒤로가기 같은 부분 감춤)
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Image.asset('images/quiz.jpeg', width: width * 0.8),
                ),
                Padding(
                  padding: EdgeInsets.all(width * 0.024),
                ),
                Text(
                    'Flutter Quiz App',
                    style: TextStyle(
                      fontSize: width * 0.065,
                      fontWeight: FontWeight.bold,
                    )
                ),
                const Text(
                  'Instruction',
                  textAlign: TextAlign.center,
                ),
                Padding(
                    padding: EdgeInsets.all(width * 0.024)
                ),
                _buildStep(width, '1. 랜덤퀴즈 3개를 풀어보세요.'),
                _buildStep(width, '2. 문제를 잘 읽고 정답을 고른 뒤\n다음 문제 버튼을 눌러주세요.'),
                _buildStep(width, '3. 만점을 목표로 도전해보세요!'),
                Padding(
                  padding: EdgeInsets.all(width * 0.048),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: width * 0.036),
                  child:
                    Center(
                      child: ButtonTheme(
                        minWidth: width * 0.8,
                        height: height * 0.05,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                          primary: Colors.deepPurple,
                          ),
                          child: const Text(
                            'Start Quiz Now',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    ),
              ],
            )
        ));
  }
    Widget _buildStep(double width, String title) {
      return Container(
        padding: EdgeInsets.fromLTRB(
          width * 0.048, width * 0.024, width * 0.048, width * 0.024,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(
              Icons.check_box,
              size: width * 0.04,
            ),
            Padding(
              padding: EdgeInsets.only(right: width * 0.024),
            ),
            Text(title),
          ],
        ),
      );
    }
  }
