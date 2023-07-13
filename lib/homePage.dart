import 'package:flutter/material.dart';
import 'ksp.dart';
import 'bes.dart';
import 'lcm.dart';
import 'lsh.dart';
import 'lsn.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextStyle titleRule = TextStyle(fontSize: 30, color: Colors.white);
    TextStyle contentsRule = TextStyle(fontSize: 15, color: Colors.white);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue[400],
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 7),
                  ),
                ],
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "우리 팀 규칙!",
                      style: titleRule,
                    ),
                    Text(
                      "13시는 점심시간",
                      style: contentsRule,
                    ),
                    Text(
                      "Git merge는 매일 오후 6시",
                      style: contentsRule,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "팀 일정",
                      style: titleRule,
                    ),
                    Text(
                      "매일 아침 9시30분 회의",
                      style: contentsRule,
                    ),
                    Text(
                      "2시에 진척도 공유",
                      style: contentsRule,
                    ),
                    Text(
                      "8시30분 학습한 내용 공유, 진척도 재확인",
                      style: contentsRule,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => ksp()));
            },
            child: Text("공성표", style: TextStyle(fontSize: 50)),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => bes()));
            },
            child: Text("배은서", style: TextStyle(fontSize: 50)),
          ),
        ],
      ),
    );
  }
}
