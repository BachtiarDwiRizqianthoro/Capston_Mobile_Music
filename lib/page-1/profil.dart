import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class User extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // profilEC9 (204:40)
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xff3b76bb),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupffmka17 (NhPTxzMBBtTbpwgPu8FFMK)
              padding: EdgeInsets.fromLTRB(177*fem, 109.5*fem, 176*fem, 17.5*fem),
              width: double.infinity,
              height: 146*fem,
              decoration: BoxDecoration (
                color: Color(0xffd9d9d9),
                borderRadius: BorderRadius.circular(90*fem),
              ),
              child: Center(
                child: Text(
                  'Profil',
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
              // autogroupwuth2th (NhPUZUMifsADTs2U6PWUtH)
              padding: EdgeInsets.fromLTRB(83*fem, 42*fem, 82*fem, 535*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroup1pojMg5 (NhPUKykChXVdLytcYF1poj)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                    padding: EdgeInsets.fromLTRB(87*fem, 23*fem, 88*fem, 19*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xffd9d9d9),
                      borderRadius: BorderRadius.circular(10*fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // pajamasprofileFFf (204:54)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17*fem),
                          width: 50*fem,
                          height: 50*fem,
                          child: Image.asset(
                            'assets/page-1/images/music.jpg',
                            width: 50*fem,
                            height: 50*fem,
                          ),
                        ),
                        Center(
                          // userA7j (204:56)
                          child: Container(
                            margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 0*fem),
                            child: Text(
                              'User',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 14*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125*ffem/fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogrouppyzdrmF (NhPUSot9y9wbzqQNErpYzd)
                    margin: EdgeInsets.fromLTRB(55*fem, 0*fem, 57*fem, 0*fem),
                    padding: EdgeInsets.fromLTRB(14.25*fem, 8*fem, 20*fem, 8*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: Color(0xffd9d9d9),
                      borderRadius: BorderRadius.circular(10*fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // pepiconspopkey9kM (204:57)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 30.25*fem, 0*fem),
                          width: 12.5*fem,
                          height: 25*fem,
                          child: Image.asset(
                            'assets/page-1/images/pajamas-profile.png',
                            width: 12.5*fem,
                            height: 25*fem,
                          ),
                        ),
                        Center(
                          // akun4cR (204:43)
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 0*fem, 0*fem),
                            child: Text(
                              'Akun',
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