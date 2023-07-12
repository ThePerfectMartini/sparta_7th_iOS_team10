import 'package:flutter/material.dart';

class bes extends StatelessWidget {
  const bes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black,),
      body: Container(
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Padding(
                  padding: EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 10),
                  child: Text('안녕하세요👋 배은서입니다 🐣',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
                    textAlign: TextAlign.center,)
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Container(
                    width: 400, height: 140,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color.fromRGBO(34, 40, 49, 1)),
                    padding: EdgeInsets.all(10),
                    child: Text('저의 MBTI는 𝐈𝐒𝐓𝑱 입니다. \n인천에 살고 있고 00년생입니다.\n'
                        '강아지를 좋아해서 시츄인 밍키와 포메인 로이 2마리를 키우고 있습니다.\n'
                        '드라마 보는걸 좋아하고 여행가는 것도 좋아합니다. \n최근에 후쿠오카 갔다왔습니다ㅎㅎ',
                      style: TextStyle(fontSize: 15, color: Colors.white),),),
                ),
                  Padding(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Column(
                            children: [
                              Image.asset('image/minky.jpg', width: 100, height: 100),
                              Text('밍키 🐶︎', style: TextStyle(color: Colors.white),)
                            ],),),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Column(
                            children: [
                              Image.asset('image/roy.jpg', width: 100, height: 100,),
                              Text('로이 🐶︎', style: TextStyle(color: Colors.white),)
                            ],),),
                    ],),
                  ),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color.fromRGBO(101, 84, 175, 1)),
                    padding: EdgeInsets.only(top: 5, right: 30, bottom: 5, left: 30),
                    child: Text('장점', textAlign: TextAlign.start, style: TextStyle(fontSize: 15, color: Colors.white)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Container(
                      width: 400, height: 100,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(10),
                      child: Text('- 차분하다. \n- 사람들의 이야기를 잘 들어준다.\n- 신중하다.\n- 꼼꼼하다.',
                        style: TextStyle(fontSize: 15, color: Colors.white),),),
                  ),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Color.fromRGBO(101, 84, 175, 1)),
                    padding: EdgeInsets.only(top: 5, right: 30, bottom: 5, left: 30),
                    child: Text('나만의 협업 스타일', textAlign: TextAlign.start, style: TextStyle(fontSize: 15, color: Colors.white)),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Container(
                      width: 400, height: 80,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(10),
                      child: Text('- 팀원들과 진행사항 공유하기 \n- 서로 도와주면서 협업하기 \n- 규칙을 정해놓고 코드 작성하기',
                        style: TextStyle(fontSize: 15, color: Colors.white),),),
                  ),
      ],),)

      )
    );
  }
}
