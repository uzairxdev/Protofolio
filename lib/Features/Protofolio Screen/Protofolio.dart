import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:uzair_developer/Features/about.dart';
import 'package:uzair_developer/Features/education.dart';
import 'package:uzair_developer/Features/footer.dart';
import 'package:uzair_developer/Features/skills.dart';

class Protofolio extends StatefulWidget {
  const Protofolio({Key? key}) : super(key: key);

  @override
  State<Protofolio> createState() => _ProtofolioState();
}

class _ProtofolioState extends State<Protofolio> {
  List<Widget> navItems = [];
  bool isMobile = false;

  final skillKey = GlobalKey();

  @override
  void initState() {
    navItems = [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {},
          child: Text("Education"),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              Color.fromARGB(255, 22, 82, 132),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            Scrollable.ensureVisible(skillKey.currentContext!);
          },
          child: Text("Skills"),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              Color.fromARGB(255, 22, 82, 132),
            ),
          ),
        ),
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    isMobile = MediaQuery.of(context).size.width > 700 ? false : true;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 49, 88),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 3, 49, 88),
        elevation: 0,
        title: const Text(
          "Flutter Developer",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 27,
          ),
        ),
        actions: isMobile ? null : navItems,
      ),
      drawer: isMobile
          ? Drawer(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    const Text(
                      '< Uzair />',
                      style: TextStyle(
                        fontSize: 27,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      color: Colors.white,
                      height: 20,
                    ),
                    const Divider(
                      color: Colors.white,
                      height: 20,
                    ),
                    Column(
                      children: navItems,
                    ),
                  ],
                ),
              ),
            )
          : null,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 20.0,
                runAlignment: WrapAlignment.center,
                children: [
                  About(),
                  Education(),
                ],
              ),
              //

              //
              Skills(
                key: skillKey,
              ),
              //
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
