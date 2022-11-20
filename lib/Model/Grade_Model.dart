import 'package:file/memory.dart';
import 'package:uzair_developer/Features/education.dart';

var edu_list = <edu>[
  edu(
    dateText: '18 july 2018',
    gradeText: 'Computer Diploma',
    Define: 'Complete the computer diploma from kohat board with 93% of marks',
  ),
  edu(
    dateText: '08 April 2019',
    gradeText: 'DIT Completed',
    Define:
        'DIT Stands for Diploma in Information technology Completed from KP Board with 96% of marks',
  ),
  edu(
    dateText: '06 Febraury 2021',
    gradeText: 'Graphic Designing',
    Define:
        'Complete the Graphic Designing from kamyab Jawan Program in FATA Univerity',
  ),
  edu(
    dateText: '25 September 2022',
    gradeText: 'Flutter Course',
    Define:
        'Complete the Flutter course with valuable and hard Earned Experience from Bete Byte Technology in Psshawar',
  ),
];

class edu {
  final String dateText;
  final String gradeText;
  final String Define;

  const edu({
    required this.dateText,
    required this.gradeText,
    required this.Define,
  });
}
