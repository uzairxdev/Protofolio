import 'package:flutter/material.dart';

import '../Core/Rows/Freelance_Row.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.only(top: 20.0),
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(
          color: Colors.white,
          width: 1,
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: const [
          FreelanceRow(),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Freelance Accounts",
          ),
        ],
      ),
    );
  }
}
