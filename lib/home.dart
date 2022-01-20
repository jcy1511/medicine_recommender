import 'package:flutter/material.dart';
import 'abrasion.dart';

class home extends StatelessWidget {
  home({Key? key}) : super(key: key);
  final List types = ['찰과상', '타박상', '종류3', '종류4'];
  final List images = [];
  final List views = [];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            itemCount: types.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            primary: false,
            padding: const EdgeInsets.all(20),
            separatorBuilder: (context, index) => Divider(
              height: 10,
              color: Colors.transparent,
            ),
            itemBuilder: (context, index) => Container(
              height: 200,
              child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: Colors.green)),
                  child: Material(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: Colors.green)),
                    color: Colors.green[50],
                    child: InkWell(
                        customBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => abrasion()),
                          );
                        },
                        child: Center(
                            child: Text(
                          '${types[index]}',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ))),
                  )),
            ),
          ),
        )
      ],
    );
  }
}
