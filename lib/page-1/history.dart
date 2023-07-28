import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // historyAbs (7:28)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xff3b76bb),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupjof7i7b (NhPPVhdYoPHXok2F4JJof7)
              padding: EdgeInsets.fromLTRB(150*fem, 107.5*fem, 149*fem, 19.5*fem),
              width: double.infinity,
              height: 146*fem,
              decoration: BoxDecoration (
                color: Color(0xffd9d9d9),
                borderRadius: BorderRadius.circular(90*fem),
              ),
              child: Center(
                child: Text(
                  'History Mood',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont (
                    'Inter',
                    fontSize: 15*ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.2125*ffem/fem,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
            Container(
              // autogrouphjudyJR (NhPQavKDBgEf96VNkHHjUD)
              padding: EdgeInsets.fromLTRB(63*fem, 140*fem, 70*fem, 468*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupcjofVXf (NhPPbwx95oRjJhvDJ7Cjof)
                    width: double.infinity,
                    height: 31*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupq45fdds (NhPPjwipKrVGGLfXvLq45F)
                          width: 115*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xffd9d9d9),
                          ),
                          child: Center(
                            child: Center(
                              child: Text(
                                'Sedih :',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 15*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125*ffem/fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 7*fem,
                        ),
                        Container(
                          // rectangle16dvh (11:40)
                          width: 64*fem,
                          height: 31*fem,
                          decoration: BoxDecoration (
                            color: Color(0xffd9d9d9),
                          ),
                        ),
                        SizedBox(
                          width: 7*fem,
                        ),
                        Container(
                          // autogrouphpkkyUm (NhPPoSczF8KwBgNEhCHpKK)
                          width: 64*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xffd9d9d9),
                          ),
                          child: Center(
                            child: Center(
                              child: Text(
                                '10',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 15*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125*ffem/fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 26*fem,
                  ),
                  Container(
                    // autogroup2vt9qWy (NhPPwc4446cqL91DAX2vt9)
                    width: double.infinity,
                    height: 31*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupvs5oB53 (NhPQ6gdFz7gF193GnpvS5o)
                          width: 115*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xffd9d9d9),
                          ),
                          child: Center(
                            child: Center(
                              child: Text(
                                'Marah :',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 15*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125*ffem/fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 7*fem,
                        ),
                        Container(
                          // rectangle17TYM (11:41)
                          width: 64*fem,
                          height: 31*fem,
                          decoration: BoxDecoration (
                            color: Color(0xffd9d9d9),
                          ),
                        ),
                        SizedBox(
                          width: 7*fem,
                        ),
                        Container(
                          // autogroupgq2dzoB (NhPQA1s3LUHYjerKibGQ2d)
                          width: 64*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xffd9d9d9),
                          ),
                          child: Center(
                            child: Center(
                              child: Text(
                                '1',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 15*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125*ffem/fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 26*fem,
                  ),
                  Container(
                    // autogroupwj4ufuK (NhPQGmAoKe7qo6RFVfWj4u)
                    width: double.infinity,
                    height: 31*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogrouprg4q1yB (NhPQNvfCKbeMheNPovrG4q)
                          width: 115*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xffd9d9d9),
                          ),
                          child: Center(
                            child: Center(
                              child: Text(
                                'Senang :',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 15*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125*ffem/fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 7*fem,
                        ),
                        Container(
                          // rectangle18V7f (11:42)
                          width: 64*fem,
                          height: 31*fem,
                          decoration: BoxDecoration (
                            color: Color(0xffd9d9d9),
                          ),
                        ),
                        SizedBox(
                          width: 7*fem,
                        ),
                        Container(
                          // autogroup5rirE5F (NhPQS6Eb732JFLHntc5RiR)
                          width: 64*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xffd9d9d9),
                          ),
                          child: Center(
                            child: Center(
                              child: Text(
                                '3',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 15*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2125*ffem/fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}