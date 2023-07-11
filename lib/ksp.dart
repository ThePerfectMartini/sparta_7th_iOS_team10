import 'package:flutter/material.dart';

class ksp extends StatelessWidget {
  const ksp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    BoxDecoration roundBoxDeco = BoxDecoration(
        color: Colors.green[600],
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.transparent, width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.lightGreen.withOpacity(0.8),
            spreadRadius: 4,
            blurRadius: 8,
            offset: Offset(8, 8),
          ),
          BoxShadow(
            color: Colors.lime.shade200.withAlpha(130),
            spreadRadius: 4,
            blurRadius: 8,
            offset: Offset(-8, -8),
          )
        ]);
    return Scaffold(
        body: Stack(
      children: [
        Container(color: Colors.lime[200]),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.fromLTRB(20, 70, 20, 0),
            child: Column(
              children: [
                Container(
                  // 앱바같은 기능 하는 컨테이너
                  width: double.infinity,
                  height: 40,
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 30,
                        ),
                        color: Colors.blueGrey,
                      ),
                      Icon(
                        Icons.account_circle,
                        size: 40,
                        color: Colors.blueGrey,
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  color: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "여러분, 안녕하세요!",
                        style: TextStyle(fontSize: 30),
                      ),
                      Text("제 이름은 공성표입니다.", style: TextStyle(fontSize: 15)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: double.infinity,
                    height: 150,
                    decoration: roundBoxDeco,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 15, 10, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("엄마의 아들이자 아빠의 자식",
                              style: TextStyle(
                                  fontSize: 30, color: Colors.lime[50])),
                          Text(
                            "INTP",
                            style: TextStyle(
                                fontSize: 20, color: Colors.lime[200]),
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 35,
                          ),
                          Center(
                            child: Text("🐱🐱 Cat Lover 🐱🐱",
                                style: TextStyle(fontSize: 15)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "My advantages",
                              style: TextStyle(fontSize: 25),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 20, 0),
                              child: Icon(
                                Icons.check_circle_outline_outlined,
                                size: 30,
                                color: Colors.deepOrange[200],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: Text("in four letters"),
                      )
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: roundBoxDeco,
                            width: 150,
                            height: 200,
                            child: Center(
                              child: CenterText(textInBox: "발표\n잘함"),
                            ),
                          ),
                          Container(
                            decoration: roundBoxDeco,
                            width: 200,
                            height: 200,
                            child: Center(
                              child: CenterText(textInBox: "소통\n원만"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: roundBoxDeco,
                            width: 200,
                            height: 200,
                            child: CenterText(textInBox: "공평\n주의"),
                          ),
                          Container(
                            decoration: roundBoxDeco,
                            width: 150,
                            height: 200,
                            child: Center(
                              child: CenterText(textInBox: "할말\n꼭함"),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}

class CenterText extends StatelessWidget {
  const CenterText({
    super.key,
    required this.textInBox,
  });

  final String textInBox;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        textInBox,
        style: TextStyle(fontSize: 25, color: Colors.lime[50]),
      ),
    );
  }
}
