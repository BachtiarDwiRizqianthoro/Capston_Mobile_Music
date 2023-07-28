import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';
import 'deteksi_page.dart';
import 'package:http/http.dart' as http;

class dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff3b76bb),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(161 * fem, 109.5 * fem, 160 * fem, 17.5 * fem),
              width: double.infinity,
              height: 146 * fem,
              decoration: BoxDecoration(
                color: Color(0xffd9d9d9),
                borderRadius: BorderRadius.circular(90 * fem),
              ),
              child: Center(
                child: Text(
                  'Dashboard',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: 15 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.2125 * ffem / fem,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30 * fem, 46 * fem, 29 * fem, 38 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DeteksiPage()),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(111 * fem, 0 * fem, 112 * fem, 115 * fem),
                      width: double.infinity,
                      height: 74 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xffd9d9d9),
                      ),
                      child: Center(
                        child: Text(
                          'Deteksi',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2125 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 29 * fem),
                    width: double.infinity,
                    height: 401 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xffd9d9d9),
                    ),
                    child: Center(
                      child: Center(
                        child: Text(
                          'Output',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            fontSize: 12 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2125 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(197 * fem, 0 * fem, 0 * fem, 0 * fem),
                    padding: EdgeInsets.fromLTRB(14 * fem, 7 * fem, 14 * fem, 8 * fem),
                    width: 60 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xffd9d9d9),
                      borderRadius: BorderRadius.circular(10 * fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 1 * fem, 1 * fem),
                          width: 29 * fem,
                          height: 28 * fem,
                          child: Image.asset(
                            'assets/page-1/images/pajamas-profile.png',
                            width: 29 * fem,
                            height: 28 * fem,
                          ),
                        ),
                        Center(
                          child: Text(
                            'User',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff000000),
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
