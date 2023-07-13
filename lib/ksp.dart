import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ksp extends StatefulWidget {
  const ksp({
    super.key,
  });

  @override
  State<ksp> createState() => _kspState();
}

class _kspState extends State<ksp> {
  @override
  Widget build(BuildContext context) {
    //시스템오버레이 (시간 와이파이 배터리 색상)
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    //박스데코레이션 변수저장
    BoxDecoration roundBoxDeco = BoxDecoration(
        // 컬려 변경시 모두 바뀜
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
            child: SingleChildScrollView(
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
                    padding: const EdgeInsets.symmetric(horizontal: 20),
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
                            Text("엄마의 아들",
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
                                padding:
                                    const EdgeInsets.fromLTRB(0, 10, 20, 0),
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
                            Ink(
                              width: 150,
                              height: 150,
                              decoration: roundBoxDeco,
                              child: InkWell(
                                borderRadius: BorderRadius.circular(20),
                                onTap: () {
                                  Future.delayed(
                                      const Duration(milliseconds: 200), () {
                                    print('Hello, world');
                                    showDialog(
                                      barrierColor:
                                          Colors.grey.withOpacity(0.5),
                                      context: context,
                                      barrierDismissible: true,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          backgroundColor: Colors.transparent,
                                          content: DetailedPage(
                                            deco: roundBoxDeco,
                                            title: "발표를 잘합니다.",
                                            content:
                                                "임기응변을 잘합니다. 발표때 크게 긴장하지 않습니다.",
                                          ),
                                        );
                                      },
                                    );
                                  });
                                },
                                child: Container(
                                  //decoration: roundBoxDeco,
                                  width: 150,
                                  height: 200,
                                  child: Center(
                                    child: CenterText(textInBox: "발표\n잘함"),
                                  ),
                                ),
                              ),
                            ),
                            Ink(
                              width: 150,
                              height: 200,
                              decoration: roundBoxDeco,
                              child: InkWell(
                                borderRadius: BorderRadius.circular(20),
                                onTap: () {
                                  Future.delayed(
                                      const Duration(milliseconds: 200), () {
                                    showDialog(
                                      barrierColor:
                                          Colors.grey.withOpacity(0.5),
                                      context: context,
                                      barrierDismissible: true,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          backgroundColor: Colors.transparent,
                                          content: DetailedPage(
                                            deco: roundBoxDeco,
                                            title: "소통을 잘합니다.",
                                            content:
                                                "말 걸어주시면 대답 정말 잘합니다. 말도 많이 겁니다. \n 상대방의 의견을 최대한 존중하려고 합니다.",
                                          ),
                                        );
                                      },
                                    );
                                  });
                                },
                                child: Container(
                                  //decoration: roundBoxDeco,
                                  width: 150,
                                  height: 200,
                                  child: Center(
                                    child: CenterText(textInBox: "소통\n원만"),
                                  ),
                                ),
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
                            Ink(
                              width: 150,
                              height: 200,
                              decoration: roundBoxDeco,
                              child: InkWell(
                                borderRadius: BorderRadius.circular(20),
                                onTap: () {
                                  Future.delayed(
                                      const Duration(milliseconds: 200), () {
                                    print('Hello, world');
                                    showDialog(
                                      barrierColor:
                                          Colors.grey.withOpacity(0.5),
                                      context: context,
                                      barrierDismissible: true,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          backgroundColor: Colors.transparent,
                                          content: DetailedPage(
                                            deco: roundBoxDeco,
                                            title: "공평이 답이다!",
                                            content:
                                                "물론 모두의 능력에 따라 적당하게 분배되는것이 필요하겠지만, \n 근본은 공평하게!",
                                          ),
                                        );
                                      },
                                    );
                                  });
                                },
                                child: Container(
                                  //decoration: roundBoxDeco,
                                  width: 150,
                                  height: 200,
                                  child: Center(
                                    child: CenterText(textInBox: "공평\n주의"),
                                  ),
                                ),
                              ),
                            ),
                            Ink(
                              width: 150,
                              height: 150,
                              decoration: roundBoxDeco,
                              child: InkWell(
                                borderRadius: BorderRadius.circular(20),
                                onTap: () {
                                  Future.delayed(
                                      const Duration(milliseconds: 200), () {
                                    print('Hello, world');
                                    showDialog(
                                      barrierColor:
                                          Colors.grey.withOpacity(0.5),
                                      context: context,
                                      barrierDismissible: true,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          backgroundColor: Colors.transparent,
                                          content: DetailedPage(
                                            deco: roundBoxDeco,
                                            title: "할말은 합니다!",
                                            content:
                                                "물론 제 의견을 관철한다는 것이 아닌 \n 뭔가 아니다 싶은 것은 숨기지 않고 말합니다!",
                                          ),
                                        );
                                      },
                                    );
                                  });
                                },
                                child: Container(
                                  //decoration: roundBoxDeco,
                                  width: 150,
                                  height: 200,
                                  child: Center(
                                    child: CenterText(textInBox: "할말\n꼭함"),
                                  ),
                                ),
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
        ),
      ],
    ));
  }
}

class DetailedPage extends StatelessWidget {
  const DetailedPage({
    super.key,
    required this.deco,
    required this.title,
    required this.content,
  });

  final deco;
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 500), () {
      print('Hello, world');
    });
    return Container(
      decoration: deco,
      width: 300,
      height: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          Text(
            content,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
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
        style: TextStyle(fontSize: 40, color: Colors.lime[50]),
      ),
    );
  }
}
