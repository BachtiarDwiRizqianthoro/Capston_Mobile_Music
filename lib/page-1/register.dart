import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:myapp/page-1/kode-otp.dart';
import 'package:myapp/page-1/login.dart';
import 'package:http/http.dart' as http;
import 'web_view.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  // our form key
  final _formKey = GlobalKey<FormState>();
  // editing controller
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _password2Controller = TextEditingController();
  

  Future<void> _regis() async {
    final String nama = _namaController.text;
    final String email = _emailController.text;
    final String password = _passwordController.text;
    final String password2 = _password2Controller.text;

    final response = await http.post(
      Uri.parse('http://192.168.82.136:5000/signup'),
      body: jsonEncode({
        'username': nama,
        'email': email,
        'password': password,
        're_password': password2}),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      // final Map<String, dynamic> responseData = json.decode(response.body);
      await Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OTPScreen()),
      );
      // TODO: Handle successful login and navigate to another page
    } else {
      final Map<String, dynamic> errorData = json.decode(response.body);
      final String errorMessage = errorData['message'];
      // TODO: Display login error message
    }
  }

  bool passVisible = false;
  @override
  void initState() {
    super.initState();
    passVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    // name field
    final nameField = TextFormField(
        autofocus: false,
        controller: _namaController,
        keyboardType: TextInputType.name,
        onChanged: (value) {},
        // validator: {},
        onSaved: (value) {
         _namaController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Name",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    //email filed
    final emailField = TextFormField(
        autofocus: false,
        controller: _emailController,
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) {},
        //validator: ,
        onSaved: (value) {
         _emailController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Email",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    //password name field
    final passwordField = TextFormField(
        autofocus: false,
        controller: _passwordController,
        obscureText: true,
        onChanged: (value) {},
        //validator: {},
        onSaved: (value) {
         _passwordController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    //retype password field
    final retypePasswordField = TextFormField(
        autofocus: false,
        controller: _password2Controller,
        obscureText: true,
        onChanged: (value) {},
        //validator: {},
        onSaved: (value) {
          _password2Controller.text = value!;
        },
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Retype Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));

    //signup button
    final signupButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Color.fromARGB(255, 0, 13, 255),
      child: MaterialButton(
          padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: _regis,
          // () {
          //   Navigator.pushReplacement(
          //       context, MaterialPageRoute(builder: (context) => OTPScreen()));
          // },
          child: Text(
            "SignUp",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          )),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.greenAccent),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 200,
                    ),
                    SizedBox(height: 45),
                    emailField,
                    SizedBox(height: 20),
                    nameField,
                    SizedBox(height: 20),
                    passwordField,
                    SizedBox(height: 20),
                    retypePasswordField,
                    SizedBox(height: 15),
                    signupButton,
                    SizedBox(height: 15),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
