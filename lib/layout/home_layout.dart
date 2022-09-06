import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:login/component/re_component.dart';
import 'package:login/model/painter_bottom.dart';
import 'package:login/model/painter_top.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            height: 260,
            child: CustomPaint(
              painter: CustomPainterTop(),
              child: Container(
                padding: const EdgeInsets.only(bottom: 35),
                alignment: Alignment.bottomCenter,
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35.0,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Form(
            key: formKey,
            child: Stack(
              children: [
                Container(
                  width: 300.0,
                  height: 140,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(100.0),
                      bottomRight: Radius.circular(100.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 12.0,
                        offset: Offset(5, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      defaultFormField(
                        controller: emailController,
                        validator: (email) {
                          if (email!.isEmpty) {
                            return 'email must not be empty';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.emailAddress,
                        obscureText: false,
                        prefixIcon: const Icon(Icons.person_pin),
                        hintText: 'Username',
                      ),
                      defaultFormField(
                        controller: passwordController,
                        validator: (pass) {
                          if (pass!.isEmpty) {
                            return 'password must not be empty';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: false,
                        prefixIcon: const Icon(Icons.person_pin),
                        hintText: '********',
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 15.0),
                  padding: EdgeInsets.only(top:35.0),
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {
                      if (formKey.currentState!.validate()) {}
                    },
                    child: Container(
                      height: 60.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80.0),
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Colors.green[400]!,
                              Colors.green[200]!,
                            ]),
                      ),
                      child: const Icon(
                        Icons.arrow_forward_rounded,
                        size: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            margin: const EdgeInsets.only(right: 15.0),
            padding: const EdgeInsets.symmetric(vertical: 1),
            child: const Text(
              'Forget ?',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                color: Colors.grey,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 10.0),
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: Text(
              'Register',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w600,
                color: Colors.orange[300],
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: CustomPaint(
                painter: CustomPainterBottom(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
