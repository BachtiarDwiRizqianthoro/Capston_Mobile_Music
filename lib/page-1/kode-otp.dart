import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/page-1/dashboard.dart';
import 'package:myapp/page-1/login.dart';

class OTPScreen extends StatefulWidget {
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  List<String> otpCode = List.filled(5, '');
  final TextEditingController _otpController = TextEditingController();

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }

  void _handleCodeChanged(String value) {
    for (int i = 0; i < otpCode.length; i++) {
      if (i < value.length) {
        otpCode[i] = value[i];
      } else {
        otpCode[i] = '';
      }
    }
    setState(() {});
  }

  void _submitOTP() {
    String enteredCode = otpCode.join('');
    // Perform action with entered OTP code
    print('Entered code: $enteredCode');
    // TODO: Add your logic for OTP verification and navigation

    // Navigate to the login screen
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => dashboard()),
    );
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double screenWidth = MediaQuery.of(context).size.width;
    double fem = screenWidth / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      backgroundColor: Color(0xff3b76bb),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20 * fem),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20 * fem),
              padding: EdgeInsets.symmetric(vertical: 10 * fem, horizontal: 30 * fem),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffd9d9d9),
                borderRadius: BorderRadius.circular(90 * fem),
              ),
              child: Text(
                'OTP',
                style: GoogleFonts.inter(
                  fontSize: 15 * ffem,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Text(
              'Masukkan Kode OTP',
              style: GoogleFonts.inter(
                fontSize: 15 * ffem,
                fontWeight: FontWeight.w400,
                color: Color(0xff000000),
              ),
            ),
            SizedBox(height: 20 * fem),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (int i = 0; i < 5; i++)
                  Container(
                    width: 40 * fem,
                    height: 40 * fem,
                    margin: EdgeInsets.only(right: 10 * fem),
                    decoration: BoxDecoration(
                      color: Color(0xffd9d9d9),
                    ),
                    child: Center(
                      child: Text(
                        otpCode[i],
                        style: GoogleFonts.inter(
                          fontSize: 15 * ffem,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            SizedBox(height: 20 * fem),
            Container(
              width: double.infinity,
              height: 40 * fem,
              decoration: BoxDecoration(
                color: Color(0xf2d9d9d9),
                borderRadius: BorderRadius.circular(10 * fem),
              ),
              child: TextField(
                controller: _otpController,
                onChanged: _handleCodeChanged,
                keyboardType: TextInputType.number,
                maxLength: 5,
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontSize: 15 * ffem,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000000),
                ),
                decoration: InputDecoration(
                  counterText: '',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 20 * fem),
            Container(
              width: double.infinity,
              height: 40 * fem,
              decoration: BoxDecoration(
                color: Color(0xf2d9d9d9),
                borderRadius: BorderRadius.circular(10 * fem),
              ),
              child: TextButton(
                onPressed: _submitOTP,
                child: Text(
                  'Masuk',
                  style: GoogleFonts.inter(
                    fontSize: 15 * ffem,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
