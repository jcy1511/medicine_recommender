import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class povidin extends StatelessWidget {
  const povidin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            '포비돈요오드',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context); //뒤로가기
              },
              color: Colors.black,
              icon: Icon(Icons.arrow_back)),
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: double.infinity,
                  height: 240,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.green[100],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset(
                      "assets/images/povidin.jpeg",
                      // width: 200,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '포비돈요오드',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      '흔히 빨간약이라고 불리며 상처 부위를 소독하는 역할입니다.\n피부에 가해지는 자극이 적고 살균효과가 비교적 오래 유지된다는 장점이 있습니다.',
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      '주의사항: 혈중 요오드 농도가 올라갈 수 있으므로 갑상선 기능에 이상이 있거나 신생아 및 6개월 미만의 영아, 신부전환자, 임산부는 사용하지 마세요.',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.red[900],
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class saline extends StatelessWidget {
  const saline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            '식염수',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context); //뒤로가기
              },
              color: Colors.black,
              icon: Icon(Icons.arrow_back)),
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: double.infinity,
                  height: 240,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.green[100],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset(
                      "assets/images/saline.jpeg",
                      // width: 200,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '식염수',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      '상처부위에 오염물이 없도록 거즈에 묻혀 이물질 제거 및 소독하는 용도입니다. \n\n상처부위에 오염물이 존재하는 상태로 치료 시 세균감염 및 2차 외상이 발생할 수 있습니다.',
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
