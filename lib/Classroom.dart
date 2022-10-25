import 'package:flutter/material.dart';

class Classroom extends StatelessWidget {
  Classroom({super.key});

  final List<String> _list = [
    'build/assets/1.jpg',
    'build/assets/2.jpg',
    'build/assets/3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
              children: [
                // buildRowSlider(context),
                buildListImage(context),
              ],
            )));
  }

  Container buildListImage(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ..._list.map((e) {
              return Container(
                margin: EdgeInsets.all(10),
                height: 400,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(e), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular((30))),
              );
            })
          ],
        ),
      ),
    );
  }

  Container buildRowSlider(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ..._list.map((e) {
              return Container(
                margin: EdgeInsets.all(10),
                height: 300,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(e), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular((30))),
              );
            })
          ],
        ),
      ),
    );
  }
}
