import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'medicines.dart';
import 'package:flutter/animation.dart';

class abrasion extends StatelessWidget {
  const abrasion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List name = ['포비돈요오드', '식염수'];
    final List images = [
      'assets/images/povidin.jpeg',
      'assets/images/saline.jpeg'
    ];
    final List description = ['상처 부위 소독', '이물질 제거 및 소독'];
    final List returns = [povidin(), saline()];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          '찰과상',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context); //뒤로가기
            },
            color: Colors.black,
            icon: Icon(Icons.arrow_back)),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: name.length,
        itemBuilder: (BuildContext context, int index) {
          return OpenContainer(
              closedElevation: 0.0,
              closedBuilder: (context, openContainer) {
                return Material(
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(10),
                    //   // side: BorderSide(color: Colors.green)
                    // ),
                    elevation: 0.0,
                    child: InkWell(
                      // customBorder: RoundedRectangleBorder(
                      //   borderRadius: BorderRadius.circular(10),
                      // ),
                      onTap: () {
                        openContainer();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(
                                '${images[index]}',
                                width: 70,
                              ),
                            ),
                            SizedBox(
                              width: 35,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${name[index]}',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '${description[index]}',
                                  style: TextStyle(fontSize: 13),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ));
              },
              openBuilder: (context, openContainer) {
                return returns[index];
              });
        },
        separatorBuilder: (context, index) => const Divider(
          height: 10,
          thickness: 1,
          indent: 10,
          endIndent: 20,
        ),
      ),
    );
  }
}

class home2 extends StatelessWidget {
  const home2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          '종류2',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context); //뒤로가기
            },
            color: Colors.black,
            icon: Icon(Icons.arrow_back)),
      ),
    );
  }
}

class home3 extends StatelessWidget {
  const home3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          '종류3',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context); //뒤로가기
            },
            color: Colors.black,
            icon: Icon(Icons.arrow_back)),
      ),
    );
  }
}

class home4 extends StatelessWidget {
  const home4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          '종류4',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context); //뒤로가기
            },
            color: Colors.black,
            icon: Icon(Icons.arrow_back)),
      ),
    );
  }
}
