import 'package:flutter/material.dart';

class lcm extends StatelessWidget {
  const lcm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '이창민',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(0),
                  child: Image.network(
                    'https://i.postimg.cc/LXrcxDkG/Avatar-Maker.png',
                    width: 110,
                    height: 107,
                    fit: BoxFit.contain,
                  ),
                ),
                Text(
                  '이창민\nchclabs.tistory.com',
                  style: TextStyle(
                    fontFamily: 'Outfit',
                    fontSize: 30,
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 55,
              child: Text(
                '소개',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Outfit',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: 438,
              height: 137,
              child: Text(
                '이름: 이창민\n생년월일: 1991년생\n나이: 33살\n취미: 음악감상\nMBTI: ISTJ\n',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Outfit',
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 55,
              child: Text(
                '장점',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Outfit',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: 438,
              height: 137,
              child: Text(
                '**객관적으로 살펴본 자신의 장점**\n\n- 신중하다\n- 섬세하고 정확하다',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Outfit',
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 55,
              child: Text(
                '협업 스타일',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Outfit',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: 438,
              height: 137,
              child: Text(
                '- 맡은 것을 열심히 하려한다\n- 신중하게 일을 처리한다\n- 함께하려 노력한다',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Outfit',
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
