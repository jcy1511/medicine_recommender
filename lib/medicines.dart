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
          '포비딘요오드',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context); //뒤로가기
            },
            color: Colors.black,
            icon: Icon(Icons.arrow_back)),
      ),
      body: SlidingUpPanel(
          backdropEnabled: true,
          borderRadius: BorderRadius.circular(20),
          panel: Center(
            child: Column(
              children: [
                SizedBox(height: 20),
                Text(
                  ' 포비딘요오드',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  '이거 설명',
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
          ),
          body: Container(
            // decoration: BoxDecoration(
            //   image: DecorationImage(
            //     image: AssetImage("assets/images/povidin.jpeg"),
            //     fit: BoxFit.fitWidth,
            //   ),
            color: Colors.green[50],
            // ),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Image.asset(
                "assets/images/povidin.jpeg",
                // width: 200,
              ),
            ]),
          )),
    );
  }
}

class povidin2 extends StatelessWidget {
  const povidin2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            '포비딘요오드',
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
                      '포비딘요오드',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      '이거 설명',
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
