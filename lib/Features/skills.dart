import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20.0,
      runSpacing: 20.0,
      alignment: WrapAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          alignment: Alignment.center,
          child: const Text(
            "My Skills",
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        //
        Container(
          width: context.screenWidth < 900
              ? context.screenWidth * 0.9
              : ((context.screenWidth * 0.7) / 3),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              width: 1,
            ),
            color: Colors.black,
            borderRadius: BorderRadius.circular(20.0),
          ),
          padding: const EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Programming Langauges",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Divider(),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: const [
                  Chip(
                    label: Text(
                      "Dart",
                    ),
                    labelStyle: TextStyle(
                      color: Colors.cyan,
                    ),
                    side: BorderSide(
                      color: Colors.cyan,
                    ),
                    backgroundColor: Colors.black,
                  ),
                  Chip(
                    label: Text(
                      "Java",
                    ),
                    labelStyle: TextStyle(
                      color: Colors.cyan,
                    ),
                    side: BorderSide(
                      color: Colors.cyan,
                    ),
                    backgroundColor: Colors.black,
                  ),
                  Chip(
                    label: Text(
                      "Javascript",
                    ),
                    labelStyle: TextStyle(
                      color: Colors.cyan,
                    ),
                    side: BorderSide(
                      color: Colors.cyan,
                    ),
                    backgroundColor: Colors.black,
                  ),
                  Chip(
                    label: Text(
                      "C",
                    ),
                    labelStyle: TextStyle(
                      color: Colors.cyan,
                    ),
                    side: BorderSide(
                      color: Colors.cyan,
                    ),
                    backgroundColor: Colors.black,
                  ),
                  Chip(
                    label: Text(
                      "C + +",
                    ),
                    labelStyle: TextStyle(
                      color: Colors.cyan,
                    ),
                    side: BorderSide(
                      color: Colors.cyan,
                    ),
                    backgroundColor: Colors.black,
                  ),
                  Chip(
                    label: Text(
                      "HTML",
                    ),
                    labelStyle: TextStyle(
                      color: Colors.cyan,
                    ),
                    side: BorderSide(
                      color: Colors.cyan,
                    ),
                    backgroundColor: Colors.black,
                  ),
                  Chip(
                    label: Text(
                      "C S S",
                    ),
                    labelStyle: TextStyle(
                      color: Colors.cyan,
                    ),
                    side: BorderSide(
                      color: Colors.cyan,
                    ),
                    backgroundColor: Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ),
        //
        //
        Container(
          width: context.screenWidth < 900
              ? context.screenWidth * 0.9
              : ((context.screenWidth * 0.7) / 3),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              width: 1,
            ),
            color: Colors.black,
            borderRadius: BorderRadius.circular(20.0),
          ),
          padding: EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Frameworks",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Divider(),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: const [
                  Chip(
                    label: Text(
                      "Flutter",
                    ),
                    labelStyle: TextStyle(
                      color: Colors.cyan,
                    ),
                    side: BorderSide(
                      color: Colors.cyan,
                    ),
                    backgroundColor: Colors.black,
                  ),
                  Chip(
                    label: Text(
                      "React Native",
                    ),
                    labelStyle: TextStyle(
                      color: Colors.cyan,
                    ),
                    side: BorderSide(
                      color: Colors.cyan,
                    ),
                    backgroundColor: Colors.black,
                  ),
                  Chip(
                    label: Text(
                      "Django",
                    ),
                    labelStyle: TextStyle(
                      color: Colors.cyan,
                    ),
                    side: BorderSide(
                      color: Colors.cyan,
                    ),
                    backgroundColor: Colors.black,
                  ),
                  Chip(
                    label: Text(
                      "Swiftic",
                    ),
                    labelStyle: TextStyle(
                      color: Colors.cyan,
                    ),
                    side: BorderSide(
                      color: Colors.cyan,
                    ),
                    backgroundColor: Colors.black,
                  ),
                  Chip(
                    label: Text(
                      "Native Script",
                    ),
                    labelStyle: TextStyle(
                      color: Colors.cyan,
                    ),
                    side: BorderSide(
                      color: Colors.cyan,
                    ),
                    backgroundColor: Colors.black,
                  ),
                  Chip(
                    label: Text(
                      "React Native",
                    ),
                    labelStyle: TextStyle(
                      color: Colors.cyan,
                    ),
                    side: BorderSide(
                      color: Colors.cyan,
                    ),
                    backgroundColor: Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ),
        //
        //
        Container(
          width: context.screenWidth < 900
              ? context.screenWidth * 0.9
              : ((context.screenWidth * 0.7) / 3),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              width: 1,
            ),
            color: Colors.black,
            borderRadius: BorderRadius.circular(20.0),
          ),
          padding: EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Other Tools",
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Divider(),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: const [
                  Chip(
                    label: Text(
                      "Adobe XD",
                    ),
                    labelStyle: TextStyle(
                      color: Colors.cyan,
                    ),
                    side: BorderSide(
                      color: Colors.cyan,
                    ),
                    backgroundColor: Colors.black,
                  ),
                  Chip(
                    label: Text(
                      "Adobe PhotoShop",
                    ),
                    labelStyle: TextStyle(
                      color: Colors.cyan,
                    ),
                    side: BorderSide(
                      color: Colors.cyan,
                    ),
                    backgroundColor: Colors.black,
                  ),
                  Chip(
                    label: Text(
                      "Canva",
                    ),
                    labelStyle: TextStyle(
                      color: Colors.cyan,
                    ),
                    side: BorderSide(
                      color: Colors.cyan,
                    ),
                    backgroundColor: Colors.black,
                  ),
                  Chip(
                    label: Text(
                      "Adobe Illustrator",
                    ),
                    labelStyle: TextStyle(
                      color: Colors.cyan,
                    ),
                    side: BorderSide(
                      color: Colors.cyan,
                    ),
                    backgroundColor: Colors.black,
                  ),
                  Chip(
                    label: Text(
                      "Adobe Premiere pro",
                    ),
                    labelStyle: TextStyle(
                      color: Colors.cyan,
                    ),
                    side: BorderSide(
                      color: Colors.cyan,
                    ),
                    backgroundColor: Colors.black,
                  ),
                ],
              ),
            ],
          ),
        ),
        //
      ],
    );
  }
}
