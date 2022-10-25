import 'package:baitap/Course.dart';
import 'package:flutter/material.dart';


class Gridview extends StatelessWidget {
  Gridview({super.key});


  final List<String> _list = [
    'build/assets/1.jpg',
    'build/assets/2.jpg'

  ];

  final List<Course> _listCourses = [
    new Course(
        '2021-2022.2.TIN3142.003',
        '[2021-2022.2] - Thực tập viết niên luận',
        12,
        'build/assets/1.jpg'),
    new Course('2021-2022.2.TIN3142.0034', '[2021-2022.2] - Công nghệ XML', 12,
        'build/assets/2.jpg'),
    new Course('2021-2022.2.TIN3142.0034', '[2021-2022.2] - Java nâng cao', 12,
        'build/assets/1.jpg'),
    new Course(
        '2021-2022.2.TIN3142.0034',
        '[2021-2022.2] - Lập trình hướng đối tượng',
        12,
        'build/assets/2.jpg'),
    new Course('2021-2022.2.TIN3142.0034', '[2021-2022.2] - Lập trình c#', 12,
        'build/assets/1.jpg')
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ..._listCourses.map((e) {
              return Container(
                margin: EdgeInsets.all(10),
                height: 260,
                width: MediaQuery.of(context).size.width,
                child: Container(
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(children: [
                        Text(
                          e.getCourseName,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w500),
                        ),
                        Row(
                          children: [
                            Text(
                              e.getCourseId,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 140),
                          child: Row(
                            children: [
                              Text(
                                e.getNumberStudent.toString() + " học viên",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                    )),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(e.getImage), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular((12))),
              );
            })
          ],
        ),
      ),
    );
  }


}